from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('',views.hello,name="hello"),
    path('test/',views.test,name="test")

]
