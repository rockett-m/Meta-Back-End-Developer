from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# from .forms import InputForm
from formsapp.forms import LogForm
# from .models import Logger

# def form_view(request):
#     form = InputForm()
#     context = {"form": form}
#     return render(request, "home.html", context)


def form_view(request):
    form = LogForm()
    if request.method == 'POST':
        form = LogForm(request.POST)
        if form.is_valid():
            form.save()
    context = {"form" : form}
    return render(request, "home.html", context)
