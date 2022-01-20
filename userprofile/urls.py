from django.urls import path
#from learning.models import Course, Lesson
from .views import ProfileView, EditProfileView
from . import views

urlpatterns = [
    path('<int:pk>/', ProfileView.as_view(), name="profile"),
    path('<int:pk>/edit/', EditProfileView.as_view(), name="editprofile"),
]