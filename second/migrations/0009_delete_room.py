# Generated by Django 4.1 on 2022-10-07 18:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('second', '0008_rename_room_students_room'),
    ]

    operations = [
        migrations.DeleteModel(
            name='room',
        ),
    ]
