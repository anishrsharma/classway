from django.contrib import admin
from django_admin.models import Student


# Register your models here.


# using decorator:
@admin.register(Student)
# using decorator is a good practic (^_^)

class StudentAdmin(admin.ModelAdmin):
    list_display = ('id','stud_id','stud_name','stud_email','stud_password')
    # here id is default id with primary key created by django


# admin.site.register(Student,StudentAdmin)
# this line isn't needed when using decorator