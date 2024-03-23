from django.db import models

# Create your models here.
class gallery(models.Model):
   id=models.AutoField
   image=models.ImageField(upload_to="gallery/")
   description=models.CharField(max_length=100)
   date=models.DateTimeField(auto_now_add=True)
class contact(models.Model):
    name=models.CharField(max_length=100)
    email=models.EmailField(max_length=100)
    subject=models.CharField(max_length=100)
    message=models.CharField(max_length=100)
class signin(models.Model):
   username=models.CharField(max_length=125)
   email=models.EmailField(max_length=100)
   password=models.CharField(max_length=120)
class trustee(models.Model):
   image=models.ImageField(upload_to="trustee/")
   name=models.CharField(max_length=100)
   Native=models.CharField(max_length=100)
   date=models.DateTimeField(auto_now_add=True)
class amenities(models.Model):
   title=models.CharField(max_length=200)
   description=models.CharField(max_length=200)
class student(models.Model):
   id=models.AutoField
   first_name=models.CharField(max_length=100)
   last_name=models.CharField(max_length=100)
   father_name=models.CharField(max_length=100)
   date_of_birth=models.DateField()
   collage_name=models.CharField(max_length=100)
   field_name=models.CharField(max_length=100)
   dept=models.CharField(max_length=100)
   term=models.CharField(max_length=100)
   mobile_number=models.CharField(max_length=10)
   email_id=models.CharField(max_length=100)
   address=models.CharField(max_length=100)
   image=models.ImageField(upload_to="student/")
   