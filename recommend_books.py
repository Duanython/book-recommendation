# -*-coding:utf-8-*-
import os
import django
from user.models import *
from math import sqrt, pow
import operator
from itertools import chain
os.environ["DJANGO_SETTINGS_MODULE"] = "book.settings"
django.setup()


class UserCf:

    # 获得初始化数据
    def __init__(self, data):
        self.data = data

    # 通过用户名获得书籍列表，仅调试使用
    def getItems(self, username1, username2):
        return self.data[username1], self.data[username2]

    # 计算两个用户的皮尔逊相关系数
    def pearson(self, user1, user2):  # 数据格式为：商品id，评分
   #     print("user message", user1)
        sumXY = 0.0
        n = 0
        sumX = 0.0
        sumY = 0.0
        sumX2 = 0.0
        sumY2 = 0.0
        #print(user1.items())
        for item, score1 in user1.items():
            if item in user2.keys():  # 计算公共的商品评分
                n += 1
                sumXY += score1 * user2[item]
                sumX += score1
                sumY += user2[item]
                sumX2 += pow(score1, 2)
                sumY2 += pow(user2[item], 2)
        if n == 0:
            #print("p氏距离为0")
            return 0
        molecule = sumXY - (sumX * sumY) / n
        denominator = sqrt((sumX2 - pow(sumX, 2) / n) * (sumY2 - pow(sumY, 2) / n))
        if denominator == 0:
     #       print("共同特征为0")
            return 0
        r = molecule / denominator
     #   print("p氏距离:", r)
        return r

    # 计算与当前用户的距离，获得最临近的用户
    def nearest_user(self, username, n=1):
        #距离字典
        distances = {}
        # 用户，相似度
        # 遍历整个数据集
        for user, rate_set in self.data.items():
            # 非当前的用户
            if user != username:
                distance = self.pearson(self.data[username], self.data[user])
                # 计算两个用户的相似度
                distances[user] = distance
        #  相似度
        closest_distance = sorted(
            distances.items(), key=operator.itemgetter(1), reverse=True
        )
        # 最相似的N个用户
        m=0
        for i in range(len(closest_distance)):
            if closest_distance[i][1]!=0:
                m+=1
        if m!=0:
            return closest_distance[:m]
        else:
            return closest_distance[:n]

    # 给用户推荐商品，username是当前用户，n是最近邻的个数
    def recommend(self, username, n=1):
        recommend = {}
        nearest_user = self.nearest_user(username, n)
        #print(nearest_user)

        for user, score in dict(nearest_user).items():  # 最相近的n个用户
            for item, scores in self.data[user].items():  # 推荐的用户的图书的列表
                if item not in self.data[username].keys():  # 当前username没有看过
                    if item not in recommend.keys():  # 添加到推荐列表中
                        recommend[item] = scores
        # 对推荐的结果按照商品评分返回
        return sorted(recommend.items(), key=operator.itemgetter(1), reverse=True)


def recommend_by_user_id(user_id):
    current_user = User.objects.get(id=user_id)
   # print("我是当前用户")
    print(current_user.rate_set.count())
    # 如果当前用户没有打分 则按照热度顺序返回
    if current_user.rate_set.count() == 0:
        book_list = Book.objects.all().order_by("-book_pl")[:15]
        return book_list
    users = User.objects.all()
    #构建评分矩阵
    all_user = {}
    for user in users:
        rates = user.rate_set.all()
        rate = {}
        # 用户有给图书打分,包装成字典的形式
        if rates:
            for i in rates:
                rate.setdefault(str(i.book.id), i.mark)
            all_user.setdefault(user.username, rate)
        else:
            # 用户没有为书籍打过分，设为0
            all_user.setdefault(user.username, {})
    #print("this is all user:", all_user)

    user_cf = UserCf(data=all_user)
    recommend_list = user_cf.recommend(current_user.username, 15)
   # print("fdfdsfdsf")
    #print(recommend_list)
    good_list = [each[0] for each in recommend_list]
    books_qu=Book.objects.all().filter(id=good_list[0])
    for i in range(1,len(good_list)):
        books_qu=books_qu|Book.objects.all().filter(id=good_list[i])
    #print(type(books_qu))
    return books_qu
# rec(1)
