# Generated by Django 4.0.2 on 2022-03-04 12:42

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='task',
            new_name='tasks',
        ),
    ]
