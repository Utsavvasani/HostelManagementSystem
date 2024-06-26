from django.urls import path
from second import views
urlpatterns = [
    path('',views.admin,name="admin"),
    path('adminlogin/',views.adminlogin,name="adminlogin"),
    path('adminlogout/',views.adminlogout,name="adminlogout"),
    path('feedback/',views.admin1,name="feedback"),
    path('course/',views.admin2,name="course"),
    path('logindetails/',views.admin3,name='logindetails'),
    path('trustee/',views.admin5,name='trustee'),
    path('student/',views.admin11,name='student'),
    path('amenities/',views.admin6,name='amenities'),
    path('events_details/',views.admin10,name='event_details'),
    path('rooms/',views.admin7,name='rooms'),
    path('show_status/<int:id>',views.show_status,name='show_status'),
    path('kitchen/',views.admin8,name='kitchen'),
    path('room_details/',views.admin9,name='room_details'),
    path('addroom/',views.addroom,name='addroom'),
    path('updateroom/<int:id>',views.updateroom,name='updateroom'),
    path('deleteroom/<int:id>',views.deleteroom,name='deleteroom'),
    path('gallery/',views.admin4,name="gallery"),
    path('upload_csv1/',views.upload_csv1,name='upload_csv1'),
    path('UploadCsvAmenities/',views.UploadCsvAmenities,name='UploadCsvAmenities'),
    path('downloadAmenities/',views.downloadAmenities,name='downloadAmenities'),
    path('add/',views.add,name='add'),
    path('delete/<int:id>', views.delete, name='delete'),
    path('update/<int:id>', views.update, name='update'),
    path('addImage/',views.addImage,name='addImage'),
    path('deleteImage/<int:id>', views.deleteImage, name='deleteImage'),
    path('updateImage/<int:id>', views.updateImage, name='updateImage'),
    path('addTrustee/',views.addTrustee,name='addTrustee'),
    path('deleteTrustee/<int:id>', views.deleteTrustee, name='deleteTrustee'),
    path('updateTrustee/<int:id>', views.updateTrustee, name='updateTrustee'),
     path('addAmenities/',views.addAmenities,name='addAmenities'),
    path('deleteAmenities/<int:id>', views.deleteAmenities, name='deleteAmenities'),
    path('updateAmenities/<int:id>', views.updateAmenities, name='updateAmenities'),
    path('addmenu/',views.addmenu,name='addmenu'),
    path('deletemenu/<int:id>', views.deletemenu, name='deletemenu'),
    path('updatemenu/<int:id>', views.updatemenu, name='updatemenu'),
    path('UploadCsvMenu/',views.UploadCsvMenu,name='UploadCsvMenu'),
    path('downloadCsvMenu/',views.downloadCsvMenu,name='downloadCsvMenu'),
    path('addEvent/',views.addEvent,name='addEvent'),
    path('deleteEvent/<int:id>', views.deleteEvent, name='deleteEvent'),
    path('updateEvent/<int:id>', views.updateEvent, name='updateEvent'),

]
