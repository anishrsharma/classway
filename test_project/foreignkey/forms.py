from django.core import validators
from django import forms
from .models import Student, Class


# class ModelFormStudent(forms.ModelForm):

#     class Meta:
#         model = Student
#         fields = ['name', ]

#         widgets = {
#             'name': forms.TextInput(attrs={
#                 'placeholder': 'student name'
#             })
#         }


# class ModelFormsClass(forms.ModelForm):

#     class Meta:
#         model = Class

#         widgets = {
#             'name': forms.TextInput(attrs={
#                 'placeholder': 'class name'
#             })

#         }
