from django.contrib import admin

# Register your models here.
# 后台要显示的内容
from user.models import Tags, User, Book, Comment, Rate


class UserAdmin(admin.ModelAdmin):
    list_display = ("username", "password", "name", "address", "email")
    search_fields = ("username", "name", "address")

class BookAdmin(admin.ModelAdmin):
    list_display = ("title", "author","book_star","book_pl","book_date")
    search_fields = ("title", "author")
    #list_filter = ("title","author")

class RateAdmin(admin.ModelAdmin):
    list_display = ("book","mark","user")
    list_filter = ("book","mark","user")

admin.site.register(Tags)
admin.site.register(User, UserAdmin)
admin.site.register(Book, BookAdmin)
admin.site.register(Rate,RateAdmin)
admin.site.register(Comment)