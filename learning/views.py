from django.shortcuts import render
from django.urls.base import reverse_lazy
from .forms import LessonForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from learning.models import Course, Lesson

class HomeView(ListView):
    model = Course
    template_name = 'learning/home.html'

class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'

def CourseView(request, lan):
    Lesson.objects.all().order_by('orderingID')
    course_lessons = Lesson.objects.filter(language=lan)
    return render(request, 'learning/course.html', {'lan': lan, 'course_lessons': course_lessons})

class CreateLessonView(CreateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/createlesson.html'
    #success_url = reverse_lazy('home')

class EditLessonView(UpdateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/editlesson.html'
    success_url = reverse_lazy('home')

class DeleteLessonView(DeleteView):
    model = Lesson
    template_name = 'learning/deletelesson.html'
    success_url = reverse_lazy('home')

class LessonView(DetailView):
    model = Lesson
    template_name = 'learning/lesson.html'

def AboutView(request):
    return render(request, 'learning/about.html')

def ContactView(request):
    return render(request, 'learning/test.html')