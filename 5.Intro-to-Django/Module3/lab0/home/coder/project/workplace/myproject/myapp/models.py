from django.db import models

# Create your models here.
class Drinks(models.Model):
    # drink = models.CharField(max_length=200)
    drink_name = models.CharField(max_length=200)
    price = models.IntegerField()

"""
# create Drinks model
python3 manage.py makemigrations
python3 manage.py showmigrations
python3 manage.py migrate
# change drink to drink_name
python3 manage.py makemigrations
python3 manage.py showmigrations
# explore .../myapp/migrations/000*_<op>.py
# explore database with vscode sqlite explorer plugin
"""