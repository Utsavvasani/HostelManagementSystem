from msilib.schema import LaunchCondition
from django.shortcuts import render,redirect
from django.http import HttpResponse
from first.models import contact,student,signin,gallery,trustee,amenities
from second.models import course,name,meal,room,event,user
from django.utils.datastructures import MultiValueDictKeyError
from django.core.exceptions import ValidationError
import csv
from datetime import date

# Create your views here.
def admin(request):
    if 'admin' not in request.session:
        return redirect('adminlogin')
    else:
        return render(request,'admin.html')
def adminlogin(request):
    if request.method=="POST":
        ur=request.POST['username']
        ps=request.POST['password']
        if ur=="admin" and ps=="123456":
            dat=request.session['admin']=ur
            return redirect('admin')  
        else:
            return render(request,"adminlogin.html")  
    else:
        return render(request,"adminlogin.html")
def adminlogout(request):
    del request.session['admin']
    return redirect("admin")
        
def admin1(request):
    Contact=contact.objects.all()
    return render(request,'admin1.html',{"contact":Contact})
def admin2(request):
    Course=course.objects.all()
    return render(request,'admin2.html',{'course':Course})
def admin3(request):
    Signin=signin.objects.all()
    return render(request,'admin3.html',{'signin':Signin}) 
def admin4(request):
    Gallery=gallery.objects.all()
    return render(request,'admin4.html',{'image':Gallery}) 
def admin5(request):
    Trustee=trustee.objects.all()
    return render(request,'admin5.html',{'trustee':Trustee}) 
def admin6(request):
    Amenities=amenities.objects.all()
    return render(request,'admin6.html',{'amenities':Amenities}) 
def admin10(request):
    Event=event.objects.all()
    return render(request,'admin10.html',{'event':Event}) 
def admin11(request):
    User=user.objects.all()
    return render(request,'admin11.html',{'user':User}) 
def addEvent(request):
    if request.method == 'POST':
        image=request.FILES['image']
        title=request.POST['title']
        description=request.POST['description']
        date=request.POST['date']
        event(title=title,description=description,date=date,image=image).save()
        return redirect('event_details')
def deleteEvent(request, id):
    Event = event.objects.get(id=id)
    Event.delete()
    return redirect('event_details')
def updateEvent(request, id):
    title=request.POST['title']
    description=request.POST['description']
    date=request.POST['date']
    Event = event.objects.get(id=id)
    Event.title=title
    Event.description=description
    Event.date=date
    try:
        image=request.FILES['image']
        Event.image=image
    except MultiValueDictKeyError:
        pass
    Event.save()
    return redirect('event_details')
def admin7(request):
    Room=room.objects.all()
    if 'room' in request.session:
        session_room=request.session.get('room')
        mon=room.objects.filter(room=session_room)
        return render(request,'admin7.html',{'room':Room,'session_room':session_room,'mon':mon})

    else:
        session_room=101
        mon=session_room
    return render(request,'admin7.html',{'room':Room,'session_room':session_room})

def admin9(request):
    Room=room.objects.all()
    if 'room' in request.session:
            session_room=request.session.get('room')
    else:
        session_room=101
    return render(request,'admin9.html',{'room':Room,'session_room':session_room})
def show_status(request,id):
    Room=room.objects.get(id=id)
    request.session['room']=Room.room
    return redirect('rooms')
def addroom(request):
    Room=request.POST["room"]
    room(room=Room).save()
    return redirect("rooms")
def updateroom(request,id):
    Room=request.POST["room"]
    first=request.POST["first"]
    second=request.POST["second"]
    third=request.POST["third"]
    fourth=request.POST["fourth"]
    data=room.objects.get(id=id)
    data.room=Room
    data.first=first
    data.second=second
    data.third=third
    data.fourth=fourth
    data.save()
    return redirect("room_details")
def deleteroom(request,id):
    Room= room.objects.get(id=id)
    Room.delete()
    return redirect('room_details')
def admin8(request):
    main = date.today()
    year=main.year
    month=main.month
    day=main.day
    if (year % 400 == 0) and (year % 100 == 0):
        if month==1 or month==3 or month==5 or month==7 or month==8 or month==10 or month==12:
            if day==31:
                meal.objects.all().delete()
        else:
            if month==2 and day==29:
                meal.objects.all().delete()
            else:
                if month==4 or month==6 or month==9 or month==11:
                    if date==31:
                        meal.objects.all().delete()        
    elif (year % 4 ==0) and (year % 100 != 0):
        if month==1 or month==3 or month==5 or month==7 or month==8 or month==10 or month==12:
            if day==31:
                meal.objects.all().delete()
        else:
            if month==2 and day==29:
                meal.objects.all().delete()
            else:
                if month==4 or month==6 or month==9 or month==11:
                    if date==31:
                        meal.objects.all().delete()
        
    else:
        if month==1 or month==3 or month==5 or month==7 or month==8 or month==10 or month==12:
            if day==31:
                meal.objects.all().delete()
        else:
            if month==2 and day==28:
                meal.objects.all().delete()
            else:
                if month==4 or month==6 or month==9 or month==11:
                    if date==31:
                        meal.objects.all().delete()
    data=meal.objects.all()
    return render(request,'admin8.html',{'menu':data})

def add(request):
    if request.method == 'POST':
        name=request.POST['name']
        price=request.POST['price']
        number_of_enrolled=request.POST['enrolled']
        number_of_message=request.POST['message']
        description=request.POST['description']
        image=request.FILES['image']
        course(name=name,image=image,price=price,number_of_enrolled=number_of_enrolled,number_of_message=number_of_message,description=description).save()
        return redirect('course')
def delete(request, id):
  Course = course.objects.get(id=id)
  Course.delete()
  return redirect('course')
def update(request, id):
    name=request.POST['name']
    price=request.POST['price']
    number_of_enrolled=request.POST['enrolled']
    number_of_message=request.POST['message']
    description=request.POST['description']
    Course = course.objects.get(id=id)
    Course.name=name
    Course.price=price
    Course.number_of_enrolled=number_of_enrolled
    Course.number_of_message=number_of_message
    Course.description=description
    try:
        image=request.FILES['image']
        Course.image=image
    except MultiValueDictKeyError:
        pass
    finally:
        Course.save()
    return redirect('course')
#
def addmenu(request):
    if request.method == 'POST':
        date=request.POST['date']
        day=request.POST['day']
        breakfast=request.POST['breakfast']
        lunch=request.POST['lunch']
        dinner=request.POST['dinner']
        meal(date=date,day=day,breakfast=breakfast,lunch=lunch,dinner=dinner).save()
        return redirect('kitchen')
def deletemenu(request, id):
  Course = meal.objects.get(id=id)
  Course.delete()
  return redirect('kitchen')
def updatemenu(request, id):
    date=request.POST['date']
    day=request.POST['day']
    breakfast=request.POST['breakfast']
    lunch=request.POST['lunch']
    dinner=request.POST['dinner']
    Menu = meal.objects.get(id=id)
    Menu.date=date
    Menu.day=day
    Menu.breakfast=breakfast
    Menu.lunch=lunch
    Menu.dinner=dinner
    try:
         Menu.date=date
    except:
        pass
    finally:
        Menu.save()
    return redirect('kitchen')

def addTrustee(request):
    if request.method == 'POST':
        name=request.POST['name']
        native=request.POST['native']
        image=request.FILES['image']
        trustee(name=name,image=image,Native=native).save()
        return redirect('trustee')
def deleteTrustee(request, id):
  Trustee = trustee.objects.get(id=id)
  Trustee.delete()
  return redirect('trustee')
def updateTrustee(request, id):
    name=request.POST['name']
    native=request.POST['native']
    Trustee = trustee.objects.get(id=id)
    Trustee.name=name
    Trustee.Native=native
    try:
        image=request.FILES['image']
        Trustee.image=image
    except MultiValueDictKeyError:
        pass
    finally:
        Trustee.save()
    return redirect('trustee')

def upload_csv1(request):
    if("GET" == request.method):
        return HttpResponse("Not valid method")

    csv_file=request.FILES["file"]
    if not csv_file.name.endswith('.csv'):
        return HttpResponse("File Not valid")
    if csv_file.multiple_chunks():
        return HttpResponse("Upload File is Big")

    file_data = csv_file.read().decode("utf-8")
    lines=file_data.split("\n")
    c=len(lines)
    for i in range(0,c-1):
        fields = lines[i].split(";")
        Username= fields[0]
        Identifier= fields[1]
        First_name= fields[2]
        Last_name = fields[3]
        name(name=Username,identifier=Identifier,firstname=First_name,lastname=Last_name).save()
    Course=course.objects.all()
    return render(request,'admin2.html',{'course':Course})
def downloadProduct(request):
    response = HttpResponse('text/csv')
    response['Content-Disposition'] = 'attachment; filename=studentdetails.csv'
    writer = csv.writer(response)
    writer.writerow(['id','name','identifier','firstname','lastname'])
    for data in name.objects.all():
        writer.writerow([data.id,data.name,data.identifier,data.firstname,data.lastname])
    return response
def addImage(request):
    if request.method == 'POST':
        description=request.POST['description']
        image=request.FILES['image']
        gallery(image=image,description=description).save()
        return redirect('gallery')
def deleteImage(request, id):
    Gallery = gallery.objects.get(id=id)
    Gallery.delete()
    return redirect('gallery')
def updateImage(request, id):
    description=request.POST['description']
    Gallery = gallery.objects.get(id=id)
    Gallery.description=description
    try:
        image=request.FILES['image']
        Gallery.image=image
    except MultiValueDictKeyError:
        pass
    finally:
        Gallery.save()
    return redirect('gallery')
def addAmenities(request):
    if request.method == 'POST':
        description=request.POST['description']
        title=request.POST['title']
        amenities(title=title,description=description).save()
        return redirect('amenities')
def deleteAmenities(request, id):
    Amenities = amenities.objects.get(id=id)
    Amenities.delete()
    return redirect('amenities')
def updateAmenities(request, id):
    description=request.POST['description']
    title=request.POST['title']
    Amenities = amenities.objects.get(id=id)
    Amenities.description=description
    Amenities.title=title
    Amenities.save()
    return redirect('amenities')
def downloadAmenities(request):
    response = HttpResponse('text/csv')
    response['Content-Disposition'] = 'attachment; filename=Amenities.csv'
    writer = csv.writer(response)
    writer.writerow(['title','description'])
    for data in amenities.objects.all():
        writer.writerow([data.title,data.description])
    return response
def UploadCsvAmenities(request):
    if("GET" == request.method):
        return HttpResponse("Not valid method")

    csv_file=request.FILES["file"]
    if not csv_file.name.endswith('.csv'):
        return HttpResponse("File Not valid")
    if csv_file.multiple_chunks():
        return HttpResponse("Upload File is Big")

    file_data = csv_file.read().decode("utf-8")
    lines=file_data.split("\n")
    c=len(lines)
    for i in range(0,c):
        fields = lines[i].split(";")
        title= fields[0]
        description= fields[1]
        amenities(title=title,description=description).save()
    return redirect('amenities')
def UploadCsvMenu(request):
    if("GET" == request.method):
        return HttpResponse("Not valid method")

    csv_file=request.FILES["file"]
    if not csv_file.name.endswith('.csv'):
        return HttpResponse("File Not valid")
    if csv_file.multiple_chunks():
        return HttpResponse("Upload File is Big")

    file_data = csv_file.read().decode("utf-8")
    lines=file_data.split("\n")
    c=len(lines)
    for i in range(0,c-1):
        fields = lines[i].split("**")
        date= fields[0]
        day= fields[1]
        breakfast= fields[2]
        Lunch= fields[3]
        dinner= fields[4]
        meal(date=date,day=day,breakfast=breakfast,lunch=Lunch,dinner=dinner).save()
    return redirect('kitchen')
def downloadCsvMenu(request):
    response = HttpResponse('text/csv')
    response['Content-Disposition'] = 'attachment; filename=meal.csv'
    writer = csv.writer(response)
    writer.writerow(['date','day','breakfast','lunch','dinner'])
    for data in meal.objects.all():
        writer.writerow([data.date,data.day,data.breakfast,data.lunch,data.dinner])
    return response
