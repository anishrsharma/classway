from django.shortcuts import render
from django.http import HttpResponse
from .forms import Email

from django.core.mail import send_mail

# Create your views here.


def email(request):
    if request.method == 'POST':
        email_obj = Email(request.POST)

        if email_obj.is_valid():
            print('valid')

            # send mail:

            send_mail(
                email_obj.cleaned_data['name'],
                email_obj.cleaned_data['msg'],
                email_obj.cleaned_data['email'],
                ['anishrajsharma06@gmail.com']

            )

        else:
            return HttpResponse('invalid data...')

    else:
        email_obj = Email()

    return render(request, 'send_email.html', {
        'email_obj': email_obj
    })
