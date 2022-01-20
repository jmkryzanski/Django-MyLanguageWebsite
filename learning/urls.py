from django.urls import path
from .views import HomeView, CourseView, LearnView, EditLessonView, DeleteLessonView, CreateLessonView, LessonView
from . import views

urlpatterns = [
    path('', HomeView.as_view(), name="home"),
    path('about/', views.AboutView, name="about"),
    path('learn/', LearnView.as_view(), name="learn"),
    path('learn/create/', CreateLessonView.as_view(), name="createlesson"),
    path('learn/<str:lan>/', CourseView, name="course"),
    path('learn/<str:lan>/<int:pk>/', LessonView.as_view(), name="lesson"),
    path('learn/<str:lan>/<int:pk>/edit', EditLessonView.as_view(), name="editlesson"),
    path('learn/<str:lan>/<int:pk>/delete', DeleteLessonView.as_view(), name="deletelesson"),
]
