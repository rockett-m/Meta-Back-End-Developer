from django.http import HttpResponse, HttpResponseNotFound

def handler404(request, exception):
    return HttpResponse("404: Page not Found!")

def home_ll(request):
    return HttpResponse("Little Lemon!")