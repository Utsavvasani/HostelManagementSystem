# Generated by Django 4.1 on 2022-10-08 08:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('second', '0012_alter_room_first_alter_room_fourth_alter_room_room_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='room',
            name='first',
            field=models.CharField(default='NULL', max_length=100),
        ),
        migrations.AlterField(
            model_name='room',
            name='fourth',
            field=models.CharField(default='NULL', max_length=100),
        ),
        migrations.AlterField(
            model_name='room',
            name='second',
            field=models.CharField(default='NULL', max_length=100),
        ),
        migrations.AlterField(
            model_name='room',
            name='third',
            field=models.CharField(default='NULL', max_length=100),
        ),
    ]
