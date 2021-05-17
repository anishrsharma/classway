from django.db import models

# Create your models here.


class xclass(models.Model):
    class_id = models.CharField(max_length=4)
    class_name = models.CharField(max_length=50)
    class_subject = models.CharField(max_length=50)


class student(models.Model):
    student_id = models.CharField(max_length=4)
    student_name = models.CharField(max_length=50)
    # class_id = models.CharField(max_length=4)
    class_id = models.ForeignKey(xclass.class_id, on_delete=models.CASCADE)


