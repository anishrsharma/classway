from django.core import validators
from django import forms
from account.models import User
from .models import Class, Question, Answer


class ModelFormEditClass(forms.ModelForm):

    class Meta:
        model = Class
        fields = ['class_name', 'class_subject', ]

        widgets = {
            'class_name': forms.TextInput(attrs={
                'placeholder': 'new class name'
            }),
            'class_subject': forms.TextInput(attrs={
                'placeholder': 'new subject name'
            }),

        }


class ModelFormAddQuestion(forms.ModelForm):

    class Meta:
        model = Question
        fields = ['qn_desc', 'qn_marks', 'qn_deadline', ]

        widgets = {
             'qn_desc': forms.Textarea(attrs={
                'placeholder': 'enter question here...',
                'cols': '80',
                'rows': '20',
            }),
            'qn_marks': forms.NumberInput(attrs={
                'placeholder': 'total marks'
            }),
            'qn_deadline': forms.DateTimeInput(attrs={
                'placeholder': 'deadline'
            }),

        }


class ModelFormAddAnswer(forms.ModelForm):

    class Meta:
        model = Answer
        fields = ['ans_desc', ]

        widgets = {
            'ans_desc': forms.Textarea(attrs={
                'placeholder': 'enter answer here...',
                'cols': '80',
                'rows': '20',

            }),

        }


class ModelFormAllotMarks(forms.ModelForm):

    class Meta:
        model = Answer
        fields = ['ans_marks', ]

        widgets = {
            'ans_desc': forms.NumberInput(attrs={  # ***
                'placeholder': 'marks',
                'min': '0'
            }),

        }


# new class
class ModelFormNewClass(forms.ModelForm):

    class Meta:
        model = Class
        fields = ['class_name', 'class_subject', ]

        widgets = {
            'class_name': forms.TextInput(attrs={
                'placeholder': 'class name',
            }),
            'class_subject': forms.TextInput(attrs={
                'placeholder': 'subject',
            }),
        }


# join class
class ModelFormJoinClass(forms.ModelForm):

    class Meta:
        model = Class
        fields = ['class_code', ]

        widgets = {
            'class_code': forms.TextInput(attrs={
                'placeholder': 'enter class code',
                
            }),
        }
