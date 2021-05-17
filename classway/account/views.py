from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import User
from .forms import ModelFormRegister, ModelFormLogin

from django.contrib.sessions.models import Session
# Create your views here.


def register(request):
    if request.method == 'POST':
        # form toh form.py se he load hoga na
        obj = ModelFormRegister(request.POST)
        # form.py mei forma ka name hai - UserModelForm

        if obj.is_valid():
            fn = obj.cleaned_data['first_name']
            ln = obj.cleaned_data['last_name']
            em = obj.cleaned_data['email']
            pass1 = obj.cleaned_data['password']
            pass2 = obj.cleaned_data['password2']

            print(fn, ln, em, pass1, pass2)

            if pass1 == pass2:
                if User.objects.filter(email=em).exists():
                    msg = 'this email already exists...'
                    return render(request, 'temp_account/register.html', {
                        'register_form_obj': obj,
                        'msg': msg
                    })
                else:
                    user_data = User(
                        first_name=fn,
                        last_name=ln,
                        email=em,
                        password=pass1
                    )
                    user_data.save()
                    return redirect(login)
            else:
                msg = 'password did not matched'
                return render(request, 'temp_account/register.html', {
                    'register_form_obj': obj,
                    'msg': msg
                })
    else:
        obj = ModelFormRegister()

    return render(request, 'temp_account/register.html', {
        'register_form_obj': obj
    })


def login(request):
    if request.method == 'POST':

        obj = ModelFormLogin(request.POST)

        if obj.is_valid():

            em = obj.cleaned_data['email']
            ps = obj.cleaned_data['password']

            print(em)
            print(ps)

            if User.objects.filter(email=em, password=ps).exists():
                # msg = 'login success...'
                print('login success')
                request.session['logged_in_user'] = em

                # return redirect('/website/home')
                return redirect('/app_classway/app_home')

            else:
                msg = 'invalid credentials...'
                print('login failed...')
                # return redirect(login)
                return render(request, 'temp_account/login.html', {
                    'login_form_obj': obj,
                    'msg': msg
                })
        else:
            msg = 'invalid data...'
    else:
        obj = ModelFormLogin()

    return render(request, 'temp_account/login.html', {
        'login_form_obj': obj
    })


def logout(request):
    if 'logged_in_user' in request.session:
        # del request.session['logged_in_user']
        Session.objects.all().delete()
        return redirect('/website/')
    else:
        return redirect('/website/')
        
