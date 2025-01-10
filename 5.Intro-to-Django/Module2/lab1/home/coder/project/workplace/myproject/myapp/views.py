from django.shortcuts import render
# from http.client import HTTPResponse
from django.http import HttpResponse

# Create your views here.
def drinks(request, drink_name):
    """ 127.0.0.1:8000/drinks/lemonade """
    drink = {
        'water': 'This bubbly substance ...',
        'gatorade': 'This sports drink ...',
        'mocha': 'type of coffee',
        'tea': 'type of beverage',
        'lemonade': 'type of refreshment'
    }
    choice_of_drink = drink[drink_name]

    return HttpResponse(f"<h2> {drink_name} </h2>" + choice_of_drink)
