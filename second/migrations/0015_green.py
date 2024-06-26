# Generated by Django 4.1 on 2022-10-09 05:26

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('second', '0014_event'),
    ]

    operations = [
        migrations.CreateModel(
            name='green',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='events/')),
                ('title', models.CharField(max_length=500)),
                ('description', models.CharField(max_length=500)),
                ('date', models.DateTimeField(default=datetime.date.today)),
            ],
        ),
    ]
