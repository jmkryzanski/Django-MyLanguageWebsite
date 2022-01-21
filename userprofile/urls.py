from django.urls import path
from .views import ProfileView, EditProfileView
from . import views

urlpatterns = [
    path('<str:myslug>/', ProfileView.as_view(), name="profile"),
    path('<str:myslug>/edit/', EditProfileView.as_view(), name="editprofile"),
]
