# -*-coding:utf-8-*-
import math
import os
import django
from user.models import *
from math import sqrt, pow
import operator
from itertools import chain
os.environ["DJANGO_SETTINGS_MODULE"] = "book.settings"
django.setup()


class ItemCF:

    # 获得初始化数据
    def __init__(self, data):
        self.similar = dict()
        self.data = data

    def ItemSimilarity(self):
        #建立物品-物品的共现矩阵
        cooccur = dict()  #物品-物品的共现矩阵
        buy = dict()  #物品被多少个不同用户购买N
        for user,items in self.data.items():
            for i in items.keys():
                buy.setdefault(i,0)
                buy[i] += 1
                cooccur.setdefault(i,{})
                for j in items.keys():
                    if i == j : continue
                    cooccur[i].setdefault(j,0)
                    cooccur[i][j] += 1
        #计算相似度矩阵
        for i,related_items in cooccur.items():
            self.similar.setdefault(i,{})
            for j,cij in related_items.items():
                self.similar[i][j] = cij / (math.sqrt(buy[i] * buy[j]))
        print(self.similar.items())
        return self.similar

    #给用户user推荐，前K个相关用户，前N个物品
    def Recommend(self,user,K=6,N=15):
        rank = dict()
        action_item = self.data[user]
        #用户user产生过行为的item和评分
        for item,score in action_item.items():
            sortedItems = sorted(self.similar[item].items(),key=lambda x:x[1],reverse=True)[0:K]
            for j,wj in sortedItems:
                if j in action_item.keys():
                    continue
                rank.setdefault(j,0)
                rank[j] += score * wj
        return sorted(rank.items(),key=lambda x:x[1],reverse=True)[0:N]

def recommend_by_item(user_id):
    current_user = User.objects.get(id=user_id)
    #print("我是当前用户")
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
    item = ItemCF(data=all_user)
    item.ItemSimilarity()
    recommedDict = item.Recommend(current_user.username, 20,400)
    #print(recommedDict)

    good_list = [each[0] for each in recommedDict]
   # print(good_list)
    books_qu=Book.objects.all().filter(id=good_list[0])
    for i in range(1,len(good_list)):
        books_qu=books_qu|Book.objects.all().filter(id=good_list[i])
    return books_qu
# rec(1)
