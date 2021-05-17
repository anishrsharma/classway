from django.db import models

# Create your models here.


class Student(models.Model):
    stud_id = models.IntegerField()
    stud_name = models.CharField(max_length=100)
    stud_email = models.EmailField(max_length=100)
    stud_password = models.CharField(max_length=100)

    # # to display stud_name instead of object 1,2,3... ,  in Student table in Django Admin
    # def __str__(self):
    #     return self.stud_name

