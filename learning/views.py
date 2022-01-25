from django.shortcuts import render
from django.urls.base import reverse_lazy
from .forms import LessonForm, GuideForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from learning.models import Course, Lesson, Guide
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin


class HomeView(ListView):
    model = Course
    template_name = 'learning/home.html'

class HomeTestView(ListView):
    model = Course
    template_name = 'learning/hometest.html'

class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

def CourseView(request, lan):
    Lesson.objects.all().order_by('orderingID')
    course_lessons = Lesson.objects.filter(language=lan)

    #Guide.objects.order_by('orderingID')

    #course_guides = Guide.objects.filter(language=lan)
    course_guides = Guide.objects.all().filter(language=lan).order_by('orderingID')
    thisCaseGuides = course_guides.filter(category="cases")
    thisPronounGuides = course_guides.filter(category="pronouns")
    #thisPronounGuides.all().order_by('orderingID')
    thisVerbGuides = course_guides.filter(category="verbs")
    thisAdjectiveGuides = course_guides.filter(category="adjectives")
    thisAdverbGuides = course_guides.filter(category="adverbs")
    thisOtherGuides = course_guides.filter(category="other")
    context = {
        'lan': lan,
        'course_lessons': course_lessons,
        'thisCaseGuides': thisCaseGuides,
        #'course_guides': course_guides,
        'thisPronounGuides': thisPronounGuides,
        'thisVerbGuides': thisVerbGuides,
        'thisAdjectiveGuides': thisAdjectiveGuides,
        'thisAdverbGuides': thisAdverbGuides,
        'thisOtherGuides': thisOtherGuides,
    }
    #pronounGuides = Guide.objects.filter(category="pronouns")

    #return render(request, 'learning/course.html', {'lan': lan, 'course_lessons': course_lessons, 'course_guides': course_guides, 'thisPronounGuides': thisPronounGuides})
    return render(request, 'learning/course.html', context)

class CreateLessonView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/createlesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    #success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

class EditLessonView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Lesson
    form_class = LessonForm
    template_name = 'learning/editlesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

class DeleteLessonView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Lesson
    template_name = 'learning/deletelesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

class ViewLessonView(DetailView):
    model = Lesson
    template_name = 'learning/lesson.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

#@user_passes_test(lambda u: u.is_superuser)
class CreateGuideView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = Guide
    form_class = GuideForm
    template_name = 'learning/createguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    #success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

class EditGuideView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Guide
    form_class = GuideForm
    template_name = 'learning/editguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

class DeleteGuideView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Guide
    template_name = 'learning/deleteguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')

    def test_func(self):
        return self.request.user.is_superuser

'''
class ViewGuideView(ListView):
    model = Guide
    template_name = 'learning/guide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
'''

def ViewGuideView(request, lan):
    course_lessons = Lesson.objects.filter(language=lan)

    course_guides = Guide.objects.all().filter(language=lan).order_by('orderingID')

    #course_guides = Guide.objects.filter(language=lan)
    thisCaseGuides = course_guides.filter(category="cases")
    thisPronounGuides = course_guides.filter(category="pronouns")
    thisVerbGuides = course_guides.filter(category="verbs")
    thisAdjectiveGuides = course_guides.filter(category="adjectives")
    thisAdverbGuides = course_guides.filter(category="adverbs")
    thisOtherGuides = course_guides.filter(category="other")
    context = {
        'lan': lan,
        'course_lessons': course_lessons,
        'thisCaseGuides': thisCaseGuides,
        'thisPronounGuides': thisPronounGuides,
        'thisVerbGuides': thisVerbGuides,
        'thisAdjectiveGuides': thisAdjectiveGuides,
        'thisAdverbGuides': thisAdverbGuides,
        'thisOtherGuides': thisOtherGuides,
    }

    return render(request, 'learning/guide.html', context)

class IndividualGuideView(DetailView):
    model = Guide
    template_name = 'learning/individualguide.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

def AboutView(request):
    return render(request, 'learning/about.html')

def ContactView(request):
    return render(request, 'learning/test.html')