from django.contrib import admin
from foreignkey.models import Student,Class

# Register your models here.

@admin.register(Student)

class StudentAdmin(admin.ModelAdmin):
    list_display = ('id','name',)


@admin.register(Class)

class ClassAdmin(admin.ModelAdmin):
    list_display = ('id','name','class_id','student_id',)
