from django.db import models

# Create your models here.


class Upload(models.Model):
    img = models.ImageField(upload_to = 'my_img')
    date = models.DateTimeField(auto_now_add=True) # current date time