#newapp/urls.py
from django.urls import path, reverse
from . import views

app_name='newapp'
urlpatterns = [
    # path('', views.index, name='index'),
    # path('login/<str:user>/<str:passwd>/', views.login, name='login'),
    path('login/here/', views.login, name='login'),
]