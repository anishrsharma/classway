from django.contrib import admin
from app_classway.models import Class, Answer, Question,Enroll
from account.models import User

# Register your models here.


# @admin.register(User)
# class UserAdmin(admin.ModelAdmin):
#     list_display = ('id', 'first_name', 'last_name', 'email', 'password',)


@admin.register(Class)
class ClassAdmin(admin.ModelAdmin):
    list_display = ('id', 'class_name', 'class_subject', 'class_code', 'class_admin',)


@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('id', 'qn_desc', 'qn_marks', 'qn_date', 'qn_deadline','class_id',)


@admin.register(Answer)
class AnswerAdmin(admin.ModelAdmin):
    list_display = ('id', 'ans_desc', 'ans_date', 'qn_id', 'user_id','ans_marks',)



@admin.register(Enroll)
class EnrollAdmin(admin.ModelAdmin):
    list_display = ('id', 'class_id', 'user_id',)
