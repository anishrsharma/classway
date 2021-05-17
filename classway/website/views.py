from django.shortcuts import render, redirect
from django.http import HttpResponse
# Create your views here.


def home_page(request):
    if 'logged_in_user' in request.session:
        print('user logged in...')
        return redirect('/app_classway/app_home')

    return render(request, 'temp_website/home.html')




def home_page_bypass(request):
    return render(request, 'temp_website/home.html')




def register_page(request):
    return render(request, 'temp_website/register.html')


def login_page(request):
    return render(request, 'temp_website/login.html')


def about_page(request):
    return HttpResponse('about page...')


def faq_page(request):
    return render(request, 'temp_website/faq.html')
