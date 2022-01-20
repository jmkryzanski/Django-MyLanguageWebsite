from django.urls import path
#from learning.models import Course, Lesson
from .views import ViewPostView, CreatePostView, EditPostView, DeletePostView, IndividualPostView, IndividualPostView
from . import views

urlpatterns = [
    path('', ViewPostView.as_view(), name="post"),
    path('create/', CreatePostView.as_view(), name="createpost"),
    path('<int:pk>/', IndividualPostView.as_view(), name="individualpost"),
    path('<int:pk>/edit/', EditPostView.as_view(), name="editpost"),
    path('<int:pk>/delete/', DeletePostView.as_view(), name="deletepost"),
]
