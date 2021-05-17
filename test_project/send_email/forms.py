from django import forms


class Email(forms.Form):
    name = forms.CharField(
        max_length=100,
        widget=forms.TextInput(attrs={
            'placeholder': 'your name'
        }),
        required=True,

    )

    email = forms.EmailField(
        max_length=100,
        widget=forms.TextInput(attrs={
            'placeholder': 'your email'
        }),
        required=True,
    )

    msg = forms.CharField(
        max_length=500,
        widget=forms.TextInput(attrs={
            'placeholder': 'enter text here...'
        }),
        required=True,
    )
