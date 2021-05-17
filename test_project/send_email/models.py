from django.db import models

# Create your models here.


class TestModel(models.Model):
    test_name = models.CharField(max_length=100)
    test_age = models.IntegerField()

    def __str__(self):
        return self.test_name
    
