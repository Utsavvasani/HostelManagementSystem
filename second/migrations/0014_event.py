# Generated by Django 4.1 on 2022-10-09 05:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('second', '0013_alter_room_first_alter_room_fourth_alter_room_second_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='event',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='events/')),
                ('title', models.CharField(max_length=500)),
                ('description', models.CharField(max_length=500)),
                ('date', models.DateTimeField()),
            ],
        ),
    ]
