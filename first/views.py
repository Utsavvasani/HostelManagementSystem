from django.shortcuts import render,redirect
from django.http import HttpResponse
from first.models import gallery,contact,signin,trustee,amenities,student
from second.models import *
from django.utils.datastructures import MultiValueDictKeyError
from django.core.exceptions import *
from django.conf import settings
from django.core.mail import send_mail

# Create your views here.
def index(request):  
    Course=course.objects.all()
    Amenities=amenities.objects.all()
    Event=event.objects.all()
    if 'username' not in request.session:
        return render(request,"index.html",{'course':Course,'amenities':Amenities,'event':Event})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"index.html",{'course':Course,'amenities':Amenities,'session':dat,'mobile':mat,'event':Event})   
        return render(request,"index.html",{'course':Course,'amenities':Amenities,'session':dat,'event':Event})    
def Gallery(request):
    photo=gallery.objects.all()
    if 'username' not in request.session:
        return render(request,"gallery.html",{'image':photo})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"gallery.html",{'image':photo,'session':dat,'mobile':mat})        
        return render(request,"gallery.html",{'session':dat,'image':photo})
def events(request):
    Event=event.objects.all()
    if 'username' not in request.session:
        return render(request,"events.html",{'event':Event})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"events.html",{'event':Event,'session':dat,'mobile':mat})        
        return render(request,"events.html",{'event':Event,'session':dat})

    
def event_details(request):
    if 'username' not in request.session:
        return render(request,"events.html")
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"event_details.html",{'session':dat,'mobile':mat})     
        return render(request,"events.html",{'session':dat})
def Contact(request):
    if request.method=="POST":
        name=request.POST['name']
        email=request.POST['email']
        subject=request.POST['subject']
        message=request.POST['message']
        contact(name=name,email=email,subject=subject,message=message).save()
        if 'username' not in request.session:
         return render(request,"contact.html")
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"contact.html",{'session':dat,'mobile':mat})
        return render(request,"contact.html",{'session':dat,'mobile':mat})
    return render(request,"contact.html")
def menu(request):
    data=meal.objects.all()
    if 'username' not in request.session:
         return render(request,"menu.html",{"data":data})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"menu.html",{"data":data,'session':dat,'mobile':mat})
        return render(request,"menu.html",{"data":data,'session':dat})
def blog_home(request):
    return render(request,"blog_home.html")
def course_details(request):
    return render(request,"course_details.html")
def blog_single(request):
    return render(request,"blog_single.html")
def about(request):
    Amenities=amenities.objects.all()
    if 'username' not in request.session:
         return render(request,"about.html",{'amenities':Amenities})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"about.html",{'amenities':Amenities,'session':dat,'mobile':mat})        
        return render(request,"about.html",{'amenities':Amenities,'session':dat})
def courses(request):
    Course=course.objects.all()
    if 'username' not in request.session:
         return render(request,"courses.html",{'course':Course})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"courses.html",{'course':Course,'session':dat,'mobile':mat})        
        return render(request,"courses.html",{'course':Course,'session':dat})
def trust(request):
    Trustee=trustee.objects.all()
    if 'username' not in request.session:
         return render(request,"trust.html",{'trustee':Trustee})
    else:
        dat=request.session.get('username')
        if 'mobile' in request.session:
            mat=request.session.get('mobile')
            return render(request,"trust.html",{'trustee':Trustee,'session':dat,'mobile':mat})
        return render(request,"trust.html",{'trustee':Trustee,'session':dat})
    return render(request,"trust.html",{'trustee':Trustee})
def admission(request):
    return render(request,"admission.html")
def profile(request):
    session=request.session.get('username')
    obj1=user.objects.get(username=session)
    number=obj1.student_id_id
    obj2=student.objects.get(id=number)
    return render(request,"profile.html",{"obj1":obj1,"obj2":obj2})
def hostel_login(request):
    if request.method=="POST":
        ur=request.POST['username']
        ps=request.POST['number']
        data=user.objects.filter(username=ur,password=ps).count()
        if data>0:
            dat=request.session['username']=ur
            mat=request.session['mobile']=ps
            return redirect('index')  
        else:
            return render(request,"hostel_login.html")  
    else:
        return render(request,"hostel_login.html")
def hostel_reg(request):
    if request.method=="POST":
        first_name=request.POST['first']
        last_name=request.POST['last']
        father_name=request.POST['father']
        date_of_birth=request.POST['date']
        collage_name=request.POST['collage_name']
        field_name=request.POST['field_name']
        dept=request.POST['department_name']
        term=request.POST['term']
        mobile_number=request.POST['mobile']
        email_id=request.POST['email']
        address=request.POST['address']
        image=request.FILES['image']
        student(first_name=first_name,
        last_name=last_name,
        father_name=father_name,
        date_of_birth=date_of_birth,
        dept=dept,
        collage_name=collage_name,
        field_name=field_name,
        term=term,
        mobile_number=mobile_number,
        email_id=email_id,
        address=address,image=image).save()
        return redirect("username")
    else:
        return redirect("index")

def username(request):
    obj=student.objects.last()
    number=obj.id
    email=obj.email_id
    username="KD300"+str(number)
    password=obj.mobile_number
    user(student_id_id=number,username=username,password=password).save()
    subject="Thank You For Registration"
    message="Thank You For Registration!! and your username is "+username+" and password is "+password
    email_from=settings.EMAIL_HOST_USER
    email_to=[email,]
    send_mail(subject,message,email_from,email_to)
    return redirect("index")
def check(request):
    number=request.POST['number']
    try:
        obj=user.objects.get(username=number)
        return redirect("index")
    except :
        return redirect("index")
def login(request):
    if request.method=="POST":
        ur=request.POST['username']
        ps=request.POST['password']
        data=signin.objects.filter(username=ur,password=ps).count()
        if data>0:
            dat=request.session['username']=ur
            return redirect('index')  
        else:
            return render(request,"login.html")  
    else:
        return render(request,"login.html")
def signup(request):
    if request.method=="POST":
        ur=request.POST['username']
        em=request.POST['email']
        ps=request.POST['pwd']
        data=signin.objects.filter(email=em).count()
        if data==0:
            signin(email=em,username=ur,password=ps).save()
            if 'username' not in request.session:
                return redirect("login")
            else:
                return redirect('index')
        else:
            render(request,"signup.html")
    else:
        return render(request,"signup.html")
def logout(request):
    del request.session['username']
    if 'mobile' in request.session:
        del request.session['mobile']
    return redirect("index")
        

