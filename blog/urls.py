from django.urls import path
#from learning.models import Course, Lesson
from .views import ViewPostView, CreatePostView, EditPostView, DeletePostView, IndividualPostView, IndividualPostView
from . import views

urlpatterns = [
    path('', ViewPostView.as_view(), name="post"),
    path('create/', CreatePostView.as_view(), name="createpost"),
    path('<slug:myslug>/', IndividualPostView.as_view(), name="individualpost"),
    path('<slug:myslug>/edit/', EditPostView.as_view(), name="editpost"),
    path('<slug:myslug>/delete/', DeletePostView.as_view(), name="deletepost"),
]
