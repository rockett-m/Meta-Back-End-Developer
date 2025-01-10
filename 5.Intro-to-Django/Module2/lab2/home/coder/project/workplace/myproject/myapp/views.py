from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):
    """ 127.0.0.1:8000/ """
    return HttpResponse("<h2>Welcome to Little Lemon!</h2>")

def about(request):
    """ 127.0.0.1:8000/about """
    return HttpResponse("<h3>About us</h3>")

# def about_us(request):
#     """ 127.0.0.1:8000/about_us """
#     return HttpResponse("<h3>About us</h3>")

def menu(request):
    """ 127.0.0.1:8000/menu """
    return HttpResponse("<h3>Menu</h3>")

def book(request):
    """ 127.0.0.1:8000/booking """
    return HttpResponse("<h3>Make a booking</h3>")
