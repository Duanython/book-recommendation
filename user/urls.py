from django.urls import path

from user import views

urlpatterns = [
    path("", views.login, name="login"),  # 首页
    path("all_book/", views.all_book, name="all_book"),  # 首页
    path("login/", views.login, name="login"),  # 登录
    path("register/", views.register, name="register"),  # 注册
    path("logout/",views.logout,name='logout'), # 退出
    path("all_book/", views.all_book, name="all_book"),  # 所有书籍
    path("book/<int:book_id>/", views.book, name="book"),  # 具体的书籍
    path("score/<int:book_id>/", views.score, name="score"),  # 评分
    path("comment/<int:book_id>/", views.commen, name="comment"),  # 评论
    path("good/<int:commen_id>/<int:book_id>/", views.good, name="good"),  # 给评论内容点赞
    path("collect/<int:book_id>/", views.collect, name="collect"),  # 收藏
    path("decollect/<int:book_id>/", views.decollect, name="decollect"),  # 取消
    path("personal/", views.personal, name="personal"),  # 获取我的信息
    path("mycollect/", views.mycollect, name="mycollect"),  # 获取我的收藏
    path("my_comments/", views.my_comments, name="my_comments"),  # 我的评论
    path("my_rate/", views.my_rate, name="my_rate"),  # 我打分过的书籍
    path("delete_comment/<int:comment_id>", views.delete_comment, name="delete_comment"),  # 取消评论
    path("delete_rate/<int:rate_id>", views.delete_rate, name="delete_rate"),  # 取消评分
    path("hot_book/", views.hot_book, name="hot_book"),  # 获取热门书籍
    path("latest_book/", views.latest_book, name="latest_book"),  # 获取最新的书籍
    path("search/", views.search, name="search"),  # 搜索
    path("begin/", views.begin, name="begin"),  # 开始
    path("kindof/", views.kindof, name="kindof"),  # 书籍标签
    path("kind/<username>/", views.kind, name="kind"),  # 特定的标签
    path("week_reco/", views.reco_by_week, name="week_reco"),  # 基于user
    path("reco_by_mo/", views.reco_by_mo, name="reco_by_mo"),  # 基于item
]