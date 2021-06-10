from django.contrib import admin
from django.urls import path

from . import views

urlpatterns = [
    path('app_home/', views.app_home, name="app_home"),
    path('app_fresher/', views.app_fresher, name="app_fresher"),
    path('app_create_class/', views.app_create_class, name="app_create_class"),
    path('app_join_class/', views.app_join_class, name="app_join_class"),



    path('app_available_class/', views.app_available_class, name="app_available_class"),
    path('app_available_class_enrolled/', views.app_available_class_enrolled, name="app_available_class_enrolled"),

    path('app_class_details/', views.app_class_details, name="app_class_details"),
    path('app_add_question/', views.app_add_question, name="app_add_question"),
    path('app_class_performance/', views.app_class_performance, name="app_class_performance"),

    path('app_no_class/', views.app_no_class, name="app_no_class"),
    path('app_account_page/', views.app_account_page, name="app_account_page"),
    path('app_status_page/', views.app_status_page, name="app_status_page"),
    path('app_todo_page/', views.app_todo_page, name="app_todo_page"),


    path('app_class_details_enrolled/', views.app_class_details_enrolled, name="app_class_details_enrolled"),



    path('app_add_answer/', views.app_add_answer, name="app_add_answer"),
    path('app_view_question/', views.app_view_question, name="app_view_question"),
    path('app_view_question_student/', views.app_view_question_student, name="app_view_question_student"),


    path('app_delete_class/', views.app_delete_class, name="app_delete_class"),
    path('app_exit_class/', views.app_exit_class, name="app_exit_class"),
    path('app_view_students/', views.app_view_students, name="app_view_students"),







    # path('app_class_performance/', views.app_class_performance, name="app_class_performance"),






]
