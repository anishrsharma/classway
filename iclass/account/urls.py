from django.urls import path
from . import views

urlpatterns = [
    path('signup',views.signup,name='signup'),
    path('login',views.login,name='login'),
    # path('user_home',views.main_menu,name='main_menu'),
    # path('test',views.test,name='test'),
    # path('join_class',views.join_class,name='join_class'),
    # path('create_class',views.create_class,name='create_class'),



    # path('',views.home,name='home'),
    
]
