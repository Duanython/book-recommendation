from django.db import models

# Create your models here.
from pymysql import NULL


class User(models.Model):
    username = models.CharField(max_length=32, unique=True, verbose_name="账号")
    password = models.CharField(max_length=255, verbose_name="密码")
    phone = models.CharField(max_length=32, verbose_name="手机号码")
    name = models.CharField(max_length=32, verbose_name="名字")
    address = models.CharField(max_length=32, verbose_name="地址")
    email = models.EmailField(verbose_name="邮箱")

    # verbose_name指定在admin管理界面中显示中文；
    # verbose_name表示单数形式的显示，verbose_name_plural表示复数形式的显示；
    # 中文的单数和复数一般不作区别
    class Meta:
        verbose_name_plural = "用户"
        verbose_name = "用户"
    def __str__(self):
        return self.name


class Tags(models.Model):
    name = models.CharField(max_length=32, verbose_name="标签")

    class Meta:
        verbose_name = "标签"
        verbose_name_plural = "标签"

    def __str__(self):
        return self.name


class Book(models.Model):
    tags = models.ForeignKey(
        Tags,
        on_delete=models.CASCADE,
        verbose_name="标签",
        related_name="tags",
        blank=True,
        null=True,
    )
    collect = models.ManyToManyField(User, verbose_name="收藏者", blank=True)
    sump = models.IntegerField(verbose_name="收藏人数", default=0,blank=True)
    new_books=models.BooleanField(verbose_name='新书',default=False,blank=True)
    title = models.CharField(verbose_name="书名", max_length=32,blank=True)
    author = models.CharField(verbose_name="作者", max_length=255,blank=True)
    book_star=models.CharField(verbose_name="评分",max_length=32,blank=True)
    book_pl=models.IntegerField(verbose_name="评价人数",default=0,blank=True)
    book_publish=models.CharField(verbose_name="出版社",max_length=32,blank=True)
    book_date=models.CharField(verbose_name="出版日期",max_length=32,blank=True)
    book_price=models.CharField(verbose_name="价格",max_length=32,blank=True)
    intro = models.TextField(verbose_name="描述",blank=True)
    num = models.IntegerField(verbose_name="浏览量", default=0,blank=True)
    pic = models.FileField(verbose_name="封面图片", max_length=64, upload_to='book_cover')
    class Meta:
        verbose_name = "图书"
        verbose_name_plural = "图书"

    def __str__(self):
        return self.title

class Rate(models.Model):
    book = models.ForeignKey(
        Book, on_delete=models.CASCADE, blank=True, null=True, verbose_name="图书id"
    )
    mark = models.IntegerField(verbose_name="评分")
    user = models.ForeignKey(
        User, on_delete=models.CASCADE, blank=True, null=True, verbose_name="用户id",
    )
    class Meta:
        verbose_name = "评分信息"
        verbose_name_plural = verbose_name


class Comment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="用户")
    content = models.TextField(verbose_name="内容")
    create_time = models.DateTimeField(verbose_name='评价时间',auto_now_add=True)
    good = models.IntegerField(verbose_name="点赞", default=0)
    book = models.ForeignKey(Book, on_delete=models.CASCADE, verbose_name="书籍")
    class Meta:
        verbose_name = "评论"
        verbose_name_plural = verbose_name