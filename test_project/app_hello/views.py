from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.


def hello(request):
    return render(request, 'hello.html', {'name1': 'Steve', 'name2': 'Buggy'})


def test(request):
    return HttpResponse("this is test from app_hello")