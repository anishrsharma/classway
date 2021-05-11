from django.core import validators
from django import forms
from .models import User


class ModelFormRegister(forms.ModelForm):
    # UserModelForm - to register user...

    password2 = forms.CharField(
        max_length=100,
        widget=forms.PasswordInput(
            attrs={
                'type': 'password',
                'placeholder': 'confirm password'
            }
        )
    )

    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email', 'password']

        # error_messages = {
        #     'first_name':{'required':'please enter your first name'}
        # }
        widgets = {
            'first_name': forms.TextInput(attrs={
                'placeholder': 'first name'
            }),
            'last_name': forms.TextInput(attrs={
                'placeholder': 'last name'
            }),
            'email': forms.EmailInput(attrs={
                'placeholder': 'email'
            }),
            'password': forms.PasswordInput(attrs={
                'placeholder': 'password'
            })

        }


class ModelFormLogin(forms.ModelForm):
    # FormLogin - to login user
    class Meta:
        model = User
        fields = ['email', 'password']

        widgets = {

            'email': forms.EmailInput(attrs={
                'placeholder': 'email'
            }),
            'password': forms.PasswordInput(attrs={
                'placeholder': 'password'
            })

        }
