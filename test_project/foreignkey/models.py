from django.db import models

# Create your models here.


class Student(models.Model):
    name = models.CharField(max_length=100)

    # __str__(self):
    #     return self.name


class Class(models.Model):
    class_id = models.IntegerField()
    name = models.CharField(max_length=100)
    student_id = models.ForeignKey(Student, on_delete=models.CASCADE)
