from calendar import day_abbr
from django.db import models
from first.models import *
from datetime import date
# Create your models here.
class course(models.Model):
   id=models.AutoField
   name=models.CharField(max_length=100)
   image=models.ImageField(upload_to="course/")
   price=models.IntegerField()
   number_of_enrolled=models.IntegerField()
   number_of_message=models.IntegerField()
   description=models.CharField(max_length=100)
   date=models.DateTimeField(auto_now_add=True)
class name(models.Model):
   name=models.CharField(max_length=100)
   identifier=models.IntegerField()
   firstname=models.CharField(max_length=100)
   lastname=models.CharField(max_length=100)

class meal(models.Model):
   date=models.CharField(max_length=100)
   day=models.CharField(max_length=100)
   breakfast=models.CharField(max_length=100)
   lunch=models.CharField(max_length=100)
   dinner=models.CharField(max_length=100)

class room(models.Model):
   room=models.CharField(max_length=100,unique=True)
   first=models.CharField(max_length=100,default="NULL")
   second=models.CharField(max_length=100,default="NULL")
   third=models.CharField(max_length=100,default="NULL")
   fourth=models.CharField(max_length=100,default="NULL")

class event(models.Model):
   image=models.ImageField(upload_to="events/")
   title=models.CharField(max_length=500)
   description=models.CharField(max_length=500)
   date=models.CharField(max_length=500)

class user(models.Model):
   student_id=models.ForeignKey(student,on_delete=models.CASCADE)
   username=models.CharField(max_length=500)
   password=models.CharField(max_length=500)