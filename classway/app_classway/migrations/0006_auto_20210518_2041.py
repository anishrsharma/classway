# Generated by Django 3.2.2 on 2021-05-18 15:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_classway', '0005_remove_class_user_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='enroll',
            old_name='class_id',
            new_name='classx',
        ),
        migrations.RenameField(
            model_name='enroll',
            old_name='user_id',
            new_name='userx',
        ),
    ]
