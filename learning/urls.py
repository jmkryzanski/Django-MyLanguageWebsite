from django.urls import path
#from learning.models import Course, Lesson
from .views import HomeView, CourseView, LearnView, ProfileView, EditProfileView, EditLessonView, DeleteLessonView, CreateLessonView, CreatePostView, EditPostView, DeletePostView, LessonView, PostView, IndividualPostView, IndividualPostView
from . import views

urlpatterns = [
    path('', HomeView.as_view(), name="home"),
    path('about/', views.AboutView, name="about"),
    path('contact/', views.ContactView, name="contact"),
    path('social/posts/', PostView.as_view(), name="post"),
    path('social/posts/create/', CreatePostView.as_view(), name="createpost"),
    path('social/posts/<int:pk>/', IndividualPostView.as_view(), name="individualpost"),
    path('social/posts/<int:pk>/edit/', EditPostView.as_view(), name="editpost"),
    path('social/posts/<int:pk>/delete/', DeletePostView.as_view(), name="deletepost"),
    path('learn/', LearnView.as_view(), name="learn"),
    path('learn/create/', CreateLessonView.as_view(), name="createlesson"),
    path('learn/<str:lan>/', CourseView, name="course"),
    path('learn/<str:lan>/<int:pk>/', LessonView.as_view(), name="lesson"),
    path('learn/<str:lan>/<int:pk>/edit', EditLessonView.as_view(), name="editlesson"),
    path('learn/<str:lan>/<int:pk>/delete', DeleteLessonView.as_view(), name="deletelesson"),
    path('profile/<int:pk>/', ProfileView.as_view(), name="profile"),
    path('profile/<int:pk>/edit/', EditProfileView.as_view(), name="editprofile"),
]
