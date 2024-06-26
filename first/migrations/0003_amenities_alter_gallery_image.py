# Generated by Django 4.1 on 2022-09-30 11:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('first', '0002_trustee'),
    ]

    operations = [
        migrations.CreateModel(
            name='amenities',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('description', models.CharField(max_length=200)),
            ],
        ),
        migrations.AlterField(
            model_name='gallery',
            name='image',
            field=models.ImageField(upload_to='gallery/'),
        ),
    ]
