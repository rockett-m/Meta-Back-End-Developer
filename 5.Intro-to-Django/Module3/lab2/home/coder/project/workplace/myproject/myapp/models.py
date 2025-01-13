# Create your models here.
from django.db import models
# from .forms import Booking

# Create your models here.
class Booking(models.Model):
    first_name =       models.CharField(max_length=200)
    last_name =        models.CharField(max_length=200)
    guest_count =      models.IntegerField()
    reservation_time = models.DateField(auto_now=True)
    comments =         models.CharField(max_length=1000)

    # optional
    # def __str__(self):
    #     return f"""{
    #         self.first_name,
    #         self.last_name,
    #         self.guest_count,
    #         self.reservation_time,
    #         self.comments
    #     }"""
