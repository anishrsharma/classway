# Generated by Django 3.2 on 2021-05-06 13:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('stud_id', models.IntegerField()),
                ('stud_name', models.CharField(max_length=100)),
                ('stud_email', models.EmailField(max_length=100)),
                ('stud_password', models.CharField(max_length=100)),
            ],
        ),
    ]