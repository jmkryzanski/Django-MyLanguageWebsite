from django.urls import path
#from .views import ProfileView, EditProfileVie
from . import views

urlpatterns = [
    #path('<str:myslug>/', ProfileView.as_view(), name="profile"),
    path('<str:username>/', views.ViewProfileView, name="profile"),
    #path('<str:myslug>/edit/', views.EditProfileView, name="editprofile"),
    path('<str:username>/edit/', views.EditProfileView, name="editprofile"),
]
