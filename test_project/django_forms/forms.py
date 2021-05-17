from django import forms

# creating a form


class Employee(forms.Form):
    name = forms.CharField(
        max_length=100,
        widget=forms.TextInput(attrs={
            'placeholder': 'name'
        }),
        required=False,
        # label='your name'

    )
    age = forms.IntegerField(
        # these parameters will be validated by django (^_^)
        max_value=100,
        min_value=18,
        widget=forms.NumberInput(attrs={
            # these attributes will only validated by in html not django (-_-)
            'placeholder':'age',           
            'min':'18',
            'value':'18',
            'class':'test-class'
        }),
        required=False,
        # label='your age'

    )
    department = forms.CharField(
        max_length=100,
        widget=forms.TextInput(attrs={
            'placeholder':'department'
        }),
        required=False,
        # label='your department'
    )
