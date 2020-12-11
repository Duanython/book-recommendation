import os

import requests
from scrapy.selector import Selector
from requests import RequestException
import mysql.connector
import random

id_books = []
url_img_books = []
title_books = []
author_books = []
publis_books = []
date_books = []
intro_books = []


def get_one_page(url):
    try:
        head = ['Mozilla/5.0', 'Chrome/78.0.3904.97', 'Safari/537.36']
        headers = {
            'user-agent': head[random.randint(0, 2)]
        }
        response = requests.get(url, headers=headers, proxies={'http': '171.15.65.195:9999'})
        if response.status_code == 200:
            return response
        return None
    except RequestException:
        return None


def parse_one_page(html):
    sel = Selector(html)
    books_lists = sel.css(' div ul li')
    books_lists = books_lists[16:]
    for book in books_lists:
        book_ids = book.xpath("a/@href").extract_first().strip().replace("https://book.douban.com/subject/",'').replace('/', '')
        book_img_url = book.xpath("a[@class='cover']/img/@src").extract_first().strip()
        id_books.append(book_ids)
        url_img_books.append(book_img_url)
    books = sel.css('ul li div')
    book2 = books[:20]
    for book in book2:
        book_title = book.xpath("h2/a/text()").extract_first()
        book_publis = book.xpath("p[@class='color-gray']/text()").extract_first().replace(' ', '').strip()
        book_intro = book.xpath("p[@class='detail']/text()").extract_first().replace(" ", "").strip()

        book_2 = book_publis.split('/')
        bookauthor = book_2[0]
        bookpub = book_2[-2]
        book_date = book_2[-1]

        title_books.append(book_title)
        author_books.append(bookauthor)
        publis_books.append(bookpub)
        date_books.append(book_date)
        intro_books.append(book_intro)

    # print(bookauthor+bookpub+book_date)
    books1 = books[20:]
    for book in books1:
        book_title = book.xpath("h2/a/text()").extract_first()
        book_publis = book.xpath("p[@class='color-gray']/text()").extract_first().replace(' ', '').strip()
        book_2 = book_publis.split('/')

        bookauthor = book_2[0]
        bookpub = book_2[-2]
        book_date = book_2[-1]
        book_intro = book.xpath("p[3]/text()").extract_first().replace(" ", "").strip()

        title_books.append(book_title)
        author_books.append(bookauthor)
        publis_books.append(bookpub)
        date_books.append(book_date)
        intro_books.append(book_intro)


def save_pic():
    for i in range(len(id_books)):
        if os.path.exists('media/book_cover'):
            pass
        else:
            os.mkdir('media/book_cover')
        with open('media/book_cover/' + 's' + id_books[i] + '.jpg', 'wb') as fd:
            picture = requests.get(url_img_books[i]).content
            fd.write(picture)
            fd.close()


def to_save_mysql():
    mydb = mysql.connector.connect(
        host="localhost",  # 数据库主机地址
        user="root",  # 数据库用户名
        passwd="zpc123",  # 数据库密码
        auth_plugin='mysql_native_password',
        database="douban"
    )
    book_ids=[]
    for books in id_books:
        cs='s'+books+'.jpg'
        book_ids.append(cs)
    mycursor = mydb.cursor()
    for i in range(len(id_books)):
        sql = "insert into user_book(sump,new_books,title,author,book_star,book_pl,book_publish,book_date,book_price,intro,num,pic,tags_id) values (0, TRUE, %s,%s,'无',0,%s,%s,'无',%s,0,%s,NULL )"
        val = (title_books[i], author_books[i], publis_books[i], date_books[i], intro_books[i], book_ids[i])
        mycursor.execute(sql, val)
        print('插入成功')
        mydb.commit()
url = 'https://book.douban.com/latest'
html = get_one_page(url)
parse_one_page(html)
save_pic()
to_save_mysql()
