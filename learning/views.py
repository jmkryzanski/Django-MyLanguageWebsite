from pipes import Template
from django.shortcuts import get_object_or_404, redirect, render
from django.template import context
from django.urls.base import reverse_lazy
from .forms import LessonForm, GuideForm
from django.views.generic import TemplateView, ListView, DetailView, CreateView, UpdateView, DeleteView
from learning.models import Course, Lesson, QuestionAnswer, Guide
from userprofile.models import Profile
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.models import User
from django.core import serializers
from gtts import gTTS
from django.http import HttpResponse
from django.http import JsonResponse
import difflib

def WelcomeView(request):
    if request.user.is_authenticated:
        #return render(request, 'learning/home.html')
        return HomeView(request)
    else:
        return render(request, 'learning/welcome.html')

'''class HomeView(ListView):
    model = Course
    template_name = 'learning/home.html'
'''

def HomeView(request):
    currentProfile = Profile.objects.get(user=request.user)

    #courseToAdd = currentCourse
    #currentProfile.course.add(courseToAdd)

    context = {
        'currentProfile': currentProfile,
    }
    return render(request, 'learning/home.html', context)

class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

def CourseView(request, lan):
    Lesson.objects.all()
    #course_lessons = Lesson.objects.filter(language=lan)
    course_lessons = Lesson.objects.filter(course__title=lan).order_by('orderingID')
    #Guide.objects.order_by('orderingID')

    #course_guides = Guide.objects.filter(language=lan)
    course_guides = Guide.objects.all().filter(course__title=lan).order_by('orderingID')
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

def ViewLessonView(request, lan, myslug, level):
    #lesson = Lesson.objects.filter(course__title=lan, lessonTitle=myslug)
    #lesson = Lesson.objects.get(course__title=lan, lessonTitle=myslug)
    lesson = Lesson.objects.get(course__title=lan, slug=myslug)
    questionanswer = QuestionAnswer.objects.filter(lesson__slug=myslug, level=level)
    #questionslist = questionanswer.values_list('question')
    #answerslist = questionanswer.values_list('answer')
    questions = []
    questionKeywords = []
    answers = []
    for q in questionanswer:
        questions.append(q.strquestion())
        questionKeywords.append(q.strquestionkeyword())
    for a in questionanswer:
        answers.append(a.stranswer())

    context = {
        'lesson': lesson,
        'questionanswer': questionanswer,
        'lan': lan,
        'myslug': myslug,
        'questions': questions,
        'questionKeywords': questionKeywords,
        'answers': answers,
    }
    return render(request, 'learning/lesson.html', context)

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

def ViewGuideView(request, lan):
    course_lessons = Lesson.objects.filter(course__title=lan)

    course_guides = Guide.objects.all().filter(course__title=lan).order_by('orderingID')

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

def addLanToProfile(request, lan):    
    if is_ajax(request):
        currentCourse = Course.objects.get(title=lan)
        mycourses = currentCourse.profile_set.all()
        currentProfile = Profile.objects.get(user=request.user)

        courseToAdd = currentCourse
        currentProfile.course.add(courseToAdd)

        context = {
            'lan': lan,
            'mycourses': mycourses,
            'currentProfile': currentProfile,
        }
        #return render(request, 'learning/home.html', context)
        return HomeView(request)
    else:
        return redirect('home')

def is_ajax(request):
    return request.META.get('HTTP_X_REQUESTED_WITH') == 'XMLHttpRequest'

def mytest(request):
    bet = difflib.SequenceMatcher(None, "iliketoplaysoccerwithmyfriends", "idontliketoplaysoccerwithmyfriends").ratio()
    context = {
        'bet': bet,
    }
    return render(request, 'learning/mytest.html', context)

def mytest2(request):
    bet = difflib.SequenceMatcher(None, "iliketoplaysoccerwithmyfriends", "idontliketoplaysoccerwithmyfriends").ratio()
    context = {
        'bet': bet,
    }
    return render(request, 'learning/mytest2.html', context)

def mytest3(request):
    bet = difflib.SequenceMatcher(None, "iliketoplaysoccerwithmyfriends", "idontliketoplaysoccerwithmyfriends").ratio()
    context = {
        'bet': bet,
    }
    return render(request, 'learning/mytest3.html', context)
    
def mytest4(request):
    bet = difflib.SequenceMatcher(None, "iliketoplaysoccerwithmyfriends", "idontliketoplaysoccerwithmyfriends").ratio()
    context = {
        'bet': bet,
    }
    return render(request, 'learning/mytest4.html', context)