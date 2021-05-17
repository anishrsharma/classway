from django.shortcuts import render, redirect
# from django.db import models
from .models import User

# Create your views here.


def form1(request):
    return render(request, 'form.html')


def register(request):
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        password_conf = request.POST['password_conf']

        test = request.POST['test']

        # data = User.objects.filter(user_email=email)

        if User.objects.filter(user_email=email).exists():
            request.session['msg1'] = 'exists'
        else:
            request.session['msg1'] = 'not exists'
            data = User(user_email=email, user_password=password)
            data.save()

        return render(request, 'form.html', {
            "username": username,
            "email": email,
            "password": password,
            "password_conf": password_conf
            # "msg": msg
        })
    else:
        return render(request, 'form.html')


def login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']

        # to prevent "MultiValuedDictKey ERROR":
        remember = request.POST.get('remember', False)

        not_remember = request.POST.get('not_remember', False)

        if User.objects.filter(user_email=email, user_password=password).exists():
            request.session['msg1'] = 'login success...'
            return redirect('login')

        else:
            request.session['msg1'] = 'login failed...'
            return redirect('login')

        if not_remember == 'on':
            del request.session['email']
            del request.session['password']

        # if email == def_email and password == def_password:
        #     request.session['msg1'] = 'login success...'
        #     if remember == 'on':
        #         print('remember')
        #         request.session['email'] = email
        #         request.session['password'] = password

        #     return redirect('login')

        # else:
        #     request.session['msg1'] = 'login failed...'
        #     obj = User.objects.all()
        #     # obj = User.objects.filter(user_name='username1')

            return render(request, 'form.html', {
                'obj': obj
            })

    else:
        # del request.session['msg1']
        return render(request, 'form.html')


def test():
    pass
