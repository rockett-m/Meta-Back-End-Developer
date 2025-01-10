from django.shortcuts import render
from django.http import HttpResponsePermanentRedirect
from django.urls import reverse

# Create your views here.
def login(request, user, passwd):
    # return HttpResponsePermanentRedirect(reverse('newapp:login:user:password'))
    return HttpResponsePermanentRedirect(reverse('newapp:login:here'))