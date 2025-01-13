from django.db import models
# from django import forms
# from django import models

# Create your models here.
# class Logger(forms.Form):
class Logger(models.Model):
    """
    convert forms.py format to models.py format
    first_name = forms.CharField(max_length=200)
    last_name =  forms.CharField(max_length=200)
    time_log =   forms.TimeField(help_text = "Enter the exact time")
    """
    first_name = models.CharField(max_length=200)
    last_name = models.CharField(max_length=200)
    time_log = models.TimeField(help_text="Enter the exact time!")

