from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('employee_view/', views.employee_view, name="employee_view"),
    # path('register', views.register, name="register"),
    # path('login', views.login, name="login")


]
