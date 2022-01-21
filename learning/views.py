from django.shortcuts import render
from django.urls.base import reverse_lazy
from .forms import LessonForm, GuideForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from learning.models import Course, Lesson, Guide

class HomeView(ListView):
    model = Course
    template_name = 'learning/home.html'

class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

def CourseView(request, lan):
    Lesson.objects.all().order_by('orderingID')
    course_lessons = Lesson.objects.filter(language=lan)
    course_guides = Guide.objects.filter(language=lan)
    return render(request, 'learning/course.html', {'lan': lan, 'course_lessons': course_lessons, 'course_guides': course_guides})

class CreateLessonView(CreateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/createlesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    #success_url = reverse_lazy('home')

class EditLessonView(UpdateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/editlesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

class DeleteLessonView(DeleteView):
    model = Lesson
    template_name = 'learning/deletelesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

class LessonView(DetailView):
    model = Lesson
    template_name = 'learning/lesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

class CreateGuideView(CreateView):
    model = Guide
    form_class = GuideForm
    template_name = 'learning/createguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    #success_url = reverse_lazy('home')

class EditGuideView(UpdateView):
    model = Guide
    form_class = GuideForm
    template_name = 'learning/editguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

class DeleteGuideView(DeleteView):
    model = Guide
    template_name = 'learning/deleteguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

class ViewGuideView(ListView):
    model = Guide
    template_name = 'learning/guide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

class IndividualGuideView(DetailView):
    model = Guide
    template_name = 'learning/individualguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

def AboutView(request):
    return render(request, 'learning/about.html')

def ContactView(request):
    return render(request, 'learning/test.html')