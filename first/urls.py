from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.index,name="index"),
    path('gallery/',views.Gallery,name="gallery"),
    path('profile/',views.profile,name="profile"),
    path('events/',views.events,name="events"),
    path('event_details/',views.event_details,name="event_details"),
    path('menu/',views.menu,name="menu"),
    path('contact/',views.Contact,name="contact"),
    path('courses/',views.courses,name="courses"),
    path('course_details/',views.course_details,name="course_details"),
    path('blog_home/',views.blog_home,name="blog_home"),
    path('blog_single/',views.blog_single,name="blog_single"),
    path('about/',views.about,name="about"),
    path('trust/',views.trust,name="trust"),
    path('admission/',views.admission,name="admission"),
    path('login/',views.login,name="login"),
    path('hostel_login/',views.hostel_login,name="hostel_login"),
    path('signup/',views.signup,name="signup"),
    path('logout/',views.logout,name="logout"),
    path('hostel_reg/',views.hostel_reg,name="hostel_reg"),
    path('username/',views.username,name="username"),
    path('check/',views.check,name="check"),
]
