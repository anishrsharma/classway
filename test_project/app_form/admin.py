

from django.contrib import admin

from app_form.models import User
# Register your models here.


@admin.register(User)

class UserAdmin(admin.ModelAdmin):
    list_display = ('id','user_name','user_email','user_password')
