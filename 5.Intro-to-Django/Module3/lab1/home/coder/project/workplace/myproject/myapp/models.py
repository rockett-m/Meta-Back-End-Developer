from django.db import models

# Create your models here.
# Create model DrinksCategory
class DrinksCategory(models.Model):
    category_name = models.CharField(max_length=200)

# Create model Drinks
class Drinks(models.Model):
    drink = models.CharField(max_length=200)
    price = models.IntegerField()
    category_id = models.ForeignKey(DrinksCategory, on_delete=models.PROTECT, default=None)

"""
python3 manage.py shell
from myapp.models import DrinksCategory, Drinks
cat = DrinksCategory(category_name='coffee')
cat.save()

fk = DrinksCategory.objects.get(pk=1)
drink = Drinks(drink='mocha', price=7, category_id=fk)
"""