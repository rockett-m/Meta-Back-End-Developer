from django import forms
from django.forms.widgets import NumberInput

# class DemoForm(forms.Form):
#     name = forms.CharField(widget=forms.Textarea(attrs={'rows':5}))
#     # email = forms.EmailField() # includes basic validation
#     email = forms.EmailField(label="Enter email address") # includes basic validation

# class DemoFormWidget(forms.Form):
#     # click on the gray date for calendar to choose the date
#     reservation_date = forms.DateField(widget=NumberInput(attrs={'type': 'date'}))

# FAVORITE_DISH = [
#     ('italian', 'Italian'),
#     ('greek', 'Greek'),
#     ('turkish', 'Turkish'),
# ]
# class DemoFormAlt(forms.Form):
#     # favorite_dish = forms.ChoiceField(choices=FAVORITE_DISH)
#     # click radio buttons
#     favorite_dish = forms.ChoiceField(
#         widget=forms.RadioSelect,
#         choices=FAVORITE_DISH)

# to override django table auto-naming as appname_modelname
# use the Meta class
"""
class Student(CommonInfo):
    # ...
    class Meta(CommonInfo.Meta):
        db_table = 'student_info'
"""


# SHIFTS = (
#     ("1", "Morning"),
#     ("2", "Afternoon"),
#     ("3", "Evening"),
# )
# class InputForm(forms.Form):
#     first_name = forms.CharField(max_length=200)
#     # last_name =  forms.CharField(max_length=200)
#     last_name =  forms.CharField(max_length=200, required=False)
#     shift =      forms.ChoiceField(choices = SHIFTS)
#     # time_log =   forms.TimeField()
#     time_log =   forms.TimeField(help_text = "Enter the exact time")


# class LogForm(forms.Form):
#     first_name = forms.CharField(max_length=200)
#     last_name =  forms.CharField(max_length=200, required=False)

#     time_log =   forms.TimeField(help_text = "Enter the exact time")


from .models import Logger

class LogForm(forms.ModelForm):
    class Meta:
        model = Logger
        fields = '__all__'

