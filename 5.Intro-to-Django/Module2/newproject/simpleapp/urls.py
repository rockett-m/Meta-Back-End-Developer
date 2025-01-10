from django.shortcuts import render
from django.urls import path
from . import views
# from simpleapp import views

app_name='simpleapp'

# create views here
urlpatterns = [
    path('', views.index, name='index'),
    # path('home/', views.home, name='home'),
    # path('index/', views.index, name='index'),
    path('request_headers_keys/', views.request_headers_keys, name='request_headers_keys'),
    path('request_headers_values/', views.request_headers_values, name='request_headers_values'),
    path('request_headers_dict/', views.request_headers_dict, name='request_headers_dict'),
    path('req_parts/', views.req_parts, name='req_parts'),
    path('req_msg/', views.req_msg, name='req_msg'),
    path('req_msg_http/', views.req_msg_http, name='req_msg_http'),
    path('getuser/', views.qryview, name='qryview'),
    # path('showform/', views.showform, name='showform'),
    path('simpleapp/showform/', views.showform, name='showform'),
    path("simpleapp/getform/", views.getform, name='getform'),
    # dish=pasta
    path('dishes/<str:dish>', views.menuitems),
    path('drinks/<str:name>', views.drinks, name='drinks'),
]

# path('getuser/', views.qryview, name='qryview')
