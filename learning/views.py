from django.shortcuts import render
from django.urls.base import reverse, reverse_lazy
from .forms import LessonForm, PostForm, EditPostForm, ProfileForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from learning.models import Course, Lesson, Post, Profile

class HomeView(ListView):
    model = Course
    template_name = 'learning/home.html'

class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'

class PostView(ListView):
    model = Post
    template_name = 'learning/post.html'
    ordering = ['-id']
    #ordering = ['post_date']

class IndividualPostView(DetailView):
    model = Post
    template_name = 'learning/individualpost.html'

class CreatePostView(CreateView):
    model = Post
    form_class = PostForm
    template_name = 'learning/createpost.html'

class EditPostView(UpdateView):
    model = Post
    form_class = EditPostForm
    template_name = 'learning/editpost.html'

class DeletePostView(DeleteView):
    model = Post
    template_name = 'learning/deletepost.html'
    success_url = reverse_lazy('home')

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

class ProfileView(ListView):
    model = Profile
    form_class = ProfileForm
    template_name = 'learning/profile.html'

class EditProfileView(UpdateView):
    model = Profile
    form_class = ProfileForm
    template_name = 'learning/editprofile.html'
    success_url = reverse_lazy('home')

class LessonView(DetailView):
    model = Lesson
    template_name = 'learning/lesson.html'

def AboutView(request):
    return render(request, 'learning/about.html')

def ContactView(request):
    return render(request, 'learning/test.html')

def profile(request):
    return render(request, 'learning/profile.html')