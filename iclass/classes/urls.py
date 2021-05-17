from django.urls import path
from . import views

urlpatterns = [
    path('user_class_fresher',views.user_class_fresher,name='user_class_fresher'),
    path('user_class_joinclass',views.user_class_joinclass,name='user_class_joinclass'),
    path('user_class_createclass',views.user_class_createclass,name='user_class_createclass'),
    path('user_class_availableclass',views.user_class_availableclass,name='user_class_availableclass'),
    path('user_class_classdetails',views.user_class_classdetails,name='user_class_classdetails'),
    path('user_class_addquestion',views.user_class_addquestion,name='user_class_addquestion'),
    path('user_class_classperformance',views.user_class_classperformance,name='user_class_classperformance'),
    path('user_class_takeanswer',views.user_class_takeanswer,name='user_class_takeanswer'),


    
]
