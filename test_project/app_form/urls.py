from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('form1', views.form1, name="form1"),
    path('register', views.register, name="register"),
    path('login', views.login, name="login")


]
