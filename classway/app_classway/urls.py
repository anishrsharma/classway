from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('app_home/', views.app_home, name="app_home"),
    path('app_fresher/', views.app_fresher, name="app_fresher"),
    path('app_create_class/', views.app_create_class, name="app_create_class"),
    path('app_join_class/', views.app_join_class, name="app_join_class"),



    path('app_available_class/', views.app_available_class, name="app_available_class"),
    path('app_class_details/', views.app_class_details, name="app_class_details"),
    path('app_add_question/', views.app_add_question, name="app_add_question"),
    path('app_class_performance/', views.app_class_performance, name="app_class_performance"),


    path('app_add_answer/', views.app_add_answer, name="app_add_answer"),
    path('app_view_question/', views.app_view_question, name="app_view_question"),
    path('app_view_question_student/', views.app_view_question_student, name="app_view_question_student"),


    # path('app_class_performance/', views.app_class_performance, name="app_class_performance"),






]