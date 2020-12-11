
import random
import mysql.connector


def to_save_mysql():
    mydb = mysql.connector.connect(
        host="localhost",  # 数据库主机地址
        user="root",  # 数据库用户名
        passwd="zpc123",  # 数据库密码
        auth_plugin='mysql_native_password',
        database="douban"
    )
    mycursor = mydb.cursor()
    num = 100
    book_id = [random.randint(1, 200) for i in range(num)]
    user_id = [random.randint(1, 10) for i in range(num)]
    mark = [random.randint(0, 10) for i in range(num)]
    for i in range(num):
        sql = "INSERT INTO user_rate(mark,book_id,user_id) VALUES(%s,%s,%s)"
        val = (mark[i], book_id[i], user_id[i])
        mycursor.execute(sql, val)
        print('插入成功')
        mydb.commit()
to_save_mysql()
print("插入成功")