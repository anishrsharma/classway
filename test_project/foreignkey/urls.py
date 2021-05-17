from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('fkey_view/', views.fkey_view, name="fkey_view"),

]
