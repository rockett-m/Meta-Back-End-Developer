from django.urls import path, include
from . import views

# app_name='myapp'
urlpatterns = [
    # path(' /', views.login, name='login'),
    path('', views.home, name='home'),
    path('about/', views.about, name='about'),
    # path('about_us/', views.about, name='about_us'),
    path('menu/', views.menu, name='menu'),
    path('book/', views.book, name='book'),
]