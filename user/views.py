from functools import wraps

from django.core.paginator import Paginator
from django.db.models import Q, Count, F
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from rest_framework.renderers import JSONRenderer

from recommend_books import recommend_by_user_id
from recommend_user import recommend_by_user_to_user
from recommend_user_books import recommend_by_item
from .forms import *
# Create your views here.
import hashlib


# def hash_code(s, salt='mysite'):  # 密码加密
#     h = hashlib.sha256()
#     s += salt
#     h.update(s.encode())  # update方法只接收bytes类型
#     return h.hexdigest()


def login_in(func):  # 验证用户是否登录
    @wraps(func)
    def wrapper(*args, **kwargs):
        request = args[0]
        is_login = request.session.get("login_in")
        if is_login:
            return func(*args, **kwargs)
        else:
            return redirect(reverse("login"))
    return wrapper


def books_paginator(books, page):
    paginator = Paginator(books, 12)
    if page is None:
        page = 1
    books = paginator.page(page)
    return books


class JSONResponse(HttpResponse):
    def __init__(self, data, **kwargs):
        content = JSONRenderer().render(data)
        kwargs["content_type"] = "application/json"
        super(JSONResponse, self).__init__(content, **kwargs)

def login(request):
    # 不允许重复登陆
    if request.session.get('is_login', None):
        return redirect('login')
    if request.method == "POST":
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        message = "请检查填写的内容!"
        if username and password:  # 确保用户名和密码都不为空
            username = username.strip()
            # 用户名字符合法性验证
            # 密码长度验证
            # 更多的其它验证.....
            try:
                user = User.objects.get(username=username)
                if user.password == password:  # 哈希值和数据库内的值进行比对
                    # 往session字典内写入用户状态和数据
                    request.session['login_in'] = True
                    request.session['user_id'] = user.id
                    request.session['name'] = user.name
                    return redirect('all_book')
                else:
                    message="密码不正确！"
            except:
                message = "用户名不存在"
        return render(request, 'user/login.html', {'message': message})
    return render(request, 'user/login.html')



def register(request):
    if request.session.get('is_login', None):
        # 登录状态不允许注册。你可以修改这条原则！
        return redirect('login')
    register_form = Register(request.POST)
    # print("我被调用了")
    # print(register_form)
    # print(register_form.is_valid())
    if register_form.is_valid():  # 获取数据
        username = register_form.cleaned_data['username']
        password1 = register_form.cleaned_data['password1']
        password2 = register_form.cleaned_data['password2']
        email = register_form.cleaned_data['email']
        # 判断两次密码是否相同
        if password1 != password2:
            message = "两次输入的密码不同！"
            return render(request, 'user/register.html', {'message': message})
        else:
            same_name_user = User.objects.filter(username=username)
            if same_name_user:  # 用户名唯一
                message = '用户已存在，请重新选择用户名！'
                return render(request, 'user/register.html', {'message': message})
            same_email_user = User.objects.filter(email=email)
            if same_email_user:  # 邮箱地址唯一
                message = '该邮箱地址已被注册，请使用别的邮箱'
                return render(request, 'user/register.html', {'message': message})
            # 当一切都OK的情况下，创建新用户
            new_user = User.objects.create()
            new_user.username = username
            new_user.password = password1
            new_user.name = username
            new_user.email = email
            new_user.save()
            return render(request, 'user/register.html', {'message': '注册成功,请登录'})
            # return redirect('login')  # 自动跳转到登录页面
    return render(request, 'user/register.html')




def logout(request):
    if not request.session.get('login_in', None):
        # 如果本来就未登录，也就没有登出一说
        return redirect("First")
    # 退出时候 flush 方法是比较安全的做法，一次性将session中所有内容全部清空，确保不留后患
    request.session.flush()
    # 或者使用下面的方法
    # del request.session['is_login']
    # del request.session['user_id']
    # del request.session['user_name']
    return redirect("login")

@login_in
def all_book(request):
    books = Book.objects.annotate(user_collector=Count('collect')).order_by('-user_collector')
    paginator = Paginator(books, 12)
    current_page = request.GET.get("page", 1)
    books = paginator.page(current_page)
    title="所有书籍"
    return render(request, "user/item.html", locals())
@login_in
def search(request):  # 搜索
    if request.method == "POST":  # 如果搜索界面
        key = request.POST["search"]
        request.session["search"] = key  # 记录搜索关键词解决跳页问题
    else:
        key = request.session.get("search")  # 得到关键词
    books = Book.objects.filter(
        Q(title__icontains=key) | Q(intro__icontains=key) | Q(author__icontains=key)
    )  # 进行内容的模糊搜索
    page_num = request.GET.get("page", 1)
    books = books_paginator(books, page_num)
    return render(request, "user/item.html", {"books": books})
@login_in
def book(request, book_id):
    book = Book.objects.get(pk=book_id)
    book.num += 1
    book.save()
    comments = book.comment_set.order_by("-create_time")
    user_id = request.session.get("user_id")
    is_rate = Rate.objects.filter(book=book,user_id=user_id).first()
    if user_id is not None:
        #user = User.objects.get(pk=user_id)
        is_collect = book.collect.filter(id=user_id).first()
    return render(request, "user/book.html", locals())

@login_in
def score(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    score = float(request.POST.get("score"))
    Rate.objects.get_or_create(user=user, book=book, defaults={"mark": score})
    return redirect(reverse("book", args=(book_id,)))


@login_in
def commen(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    comment = request.POST.get("comment")
    Comment.objects.create(user=user, book=book, content=comment)
    return redirect(reverse("book", args=(book_id,)))


def good(request, commen_id, book_id):
    commen = Comment.objects.get(id=commen_id)
    commen.good += 1
    commen.save()
    return redirect(reverse("book", args=(book_id,)))


@login_in
def collect(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    book.collect.add(user)
    book.save()
    return redirect(reverse("book", args=(book_id,)))


@login_in
def decollect(request, book_id):
    user = User.objects.get(id=request.session.get("user_id"))
    book = Book.objects.get(id=book_id)
    book.collect.remove(user)
    book.save()
    return redirect(reverse("book", args=(book_id,)))

@login_in
def personal(request):
    user = User.objects.get(id=request.session.get("user_id"))
    if request.method == "POST":
        form = Edit(instance=user, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect(reverse("personal"))
        else:
            return render(
                request, "user/personal.html", {"message": "修改失败", "form": form}
            )
    form = Edit(instance=user)
    return render(request, "user/personal.html", {"form": form})


@login_in
def mycollect(request):
    user = User.objects.get(id=request.session.get("user_id"))
    book = user.book_set.all()
    return render(request, "user/mycollect.html", {"book": book})

@login_in
def my_comments(request):
    user = User.objects.get(id=request.session.get("user_id"))
    comments = user.comment_set.all()
    print('comment:', comments)
    return render(request, "user/my_comment.html", {"comments": comments})

def delete_comment(request, comment_id):
    Comment.objects.get(pk=comment_id).delete()
    return redirect(reverse("my_comments"))


def my_rate(request):
    user = User.objects.get(id=request.session.get("user_id"))
    rate = user.rate_set.all()
    return render(request, "user/my_rate.html", {"rate": rate})


def delete_rate(request, rate_id):
    Rate.objects.filter(pk=rate_id).delete()
    return redirect(reverse("my_rate"))
@login_in
def hot_book(request):
    page_number = request.GET.get("page", 1)
   # books = Book.objects.annotate(user_collector=Count('collect')).order_by('-user_collector')[:10]
    books=Book.objects.all().filter().order_by('-book_pl')[:100]
    books = books_paginator(books[:100], page_number)
    return render(request, "user/item.html", {"books": books, "title": "最热书籍"})

@login_in
def latest_book(request):
    page_number = request.GET.get("page", 1)
    books = Book.objects.all().filter(new_books=1).order_by('-new_books')[:100]
    books = books_paginator(books[:100], page_number)
    return render(request, "user/item.html", {"books": books, "title": "最新书籍"})

def begin(request):
    if request.method == "POST":
        email = request.POST["email"]
        username = request.POST["username"]
        result = User.objects.filter(username=username)
        if result:
            if result[0].email == email:
                result[0].password = request.POST["password"]
                return HttpResponse("修改密码成功")
            else:
                return render(request, "user/begin.html", {"message": "注册时的邮箱不对"})
        else:
            return render(request, "user/begin.html", {"message": "账号不存在"})
    return render(request, "user/begin.html")

@login_in
def kindof(request):
    #page = request.GET.get("page", 1)
    #books = books_paginator(recommend_by_user_to_user(request.session.get("user_id")), page)
    books = recommend_by_user_to_user(request.session.get("user_id"))
    path = request.path
    title = "推荐用户"
    return render(
        request, "user/kindof.html", {"books": books, "path": path, "title": title}
    )
    #tags = Tags.objects.all()
    #return render(request, "user/kindof.html", {"tags": tags})


def kind(request, username):
    # 得到用户表中所属username的id 一对一
    usernames = User.objects.filter(username=username)
    for i in usernames:
        user=i.id
    #usernames=usernames.__dict__['id']
    #从评分表中查询用户的id为usernames 一对多
    books_ids=Rate.objects.filter(user_id=user)
    books_id1=[]
    for bookse in books_ids:
        books_id1.append(bookse.id)
    books_qu = Book.objects.all().filter(id=books_id1[0])
    for i in range(1, len(books_id1)):
        books_qu = books_qu | Book.objects.all().filter(id=books_id1[i])
    page_number = request.GET.get("page", 1)
    books = books_paginator(books_qu, page_number)
    return render(request, "user/item.html", {"books": books, "title": "推荐书籍"})

@login_in
def reco_by_week(request):
    page = request.GET.get("page", 1)
    books = books_paginator(recommend_by_user_id(request.session.get("user_id")), page)
    path = request.path
    title = "基于用户的推荐"
    return render(
        request, "user/item.html", {"books": books, "path": path, "title": title}
    )
@login_in
def reco_by_mo(request):
    page = request.GET.get("page", 1)
    books = books_paginator(recommend_by_item(request.session.get("user_id")), page)
    path = request.path
    title = "基于图书的推荐"
    return render(
        request, "user/item.html", {"books": books, "path": path, "title": title}
    )