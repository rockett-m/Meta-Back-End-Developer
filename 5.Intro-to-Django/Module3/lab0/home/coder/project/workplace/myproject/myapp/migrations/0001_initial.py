# Generated by Django 5.1.4 on 2025-01-11 20:56

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Drinks",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("drink_name", models.CharField(max_length=200)),
                ("price", models.IntegerField()),
            ],
        ),
    ]
