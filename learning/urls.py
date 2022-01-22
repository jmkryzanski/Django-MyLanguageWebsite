from django.urls import path
from .views import ViewGuideView, EditGuideView, IndividualGuideView, CreateGuideView, DeleteGuideView, HomeView, CourseView, LearnView, EditLessonView, DeleteLessonView, CreateLessonView, LessonView
from . import views

urlpatterns = [
    path('', HomeView.as_view(), name="home"),
    path('about/', views.AboutView, name="about"),
    path('learn/', LearnView.as_view(), name="learn"),
    path('learn/create/', CreateLessonView.as_view(), name="createlesson"),
    path('learn/<str:lan>/', CourseView, name="course"),
    #path('learn/<str:lan>/guide/', ViewGuideView.as_view(), name="guide"),
    path('learn/<str:lan>/guide/', ViewGuideView, name="guide"),
    path('learn/<str:lan>/guide/create/', CreateGuideView.as_view(), name="createguide"),
    path('learn/<str:lan>/guide/<str:myslug>/', IndividualGuideView.as_view(), name="individualguide"),
    path('learn/<str:lan>/guide/<str:myslug>/edit', EditGuideView.as_view(), name="editguide"),
    path('learn/<str:lan>/guide/<str:myslug>/delete', DeleteGuideView.as_view(), name="deleteguide"),
    path('learn/<str:lan>/<str:myslug>/', LessonView.as_view(), name="lesson"),
    path('learn/<str:lan>/<str:myslug>/edit', EditLessonView.as_view(), name="editlesson"),
    path('learn/<str:lan>/<str:myslug>/delete', DeleteLessonView.as_view(), name="deletelesson"),
]
