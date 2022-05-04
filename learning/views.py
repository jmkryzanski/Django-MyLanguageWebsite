from pipes import Template
from django.shortcuts import get_object_or_404, redirect, render
from django.template import context
from django.urls.base import reverse_lazy
from requests import get
from .forms import LessonForm, GuideForm
from django.views.generic import TemplateView, ListView, DetailView, CreateView, UpdateView, DeleteView
from learning.models import Course, Lesson, QuestionAnswer, Guide, Level
from userprofile.models import Profile
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.models import User
from django.core import serializers
from gtts import gTTS
from django.http import HttpResponse
from django.http import JsonResponse
import difflib
from django.contrib.auth.decorators import login_required

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

@login_required
def HomeView(request):
    currentProfile = Profile.objects.get(user=request.user)

    context = {
        'currentProfile': currentProfile,
    }
    return render(request, 'learning/home.html', context)

'''
class LearnView(ListView):
    model = Course
    template_name = 'learning/learn.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    def get_context_data(self,*args, **kwargs):
        context = super(LearnView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context
'''

def LearnView(request):
    if request.user.is_authenticated:
        currentProfile = Profile.objects.get(user=request.user)
        context = {
            'currentProfile': currentProfile,
        }
        return render(request, 'learning/learn.html', context)
    else:
        return render(request, 'learning/learn.html')

def CourseView(request, lan):
    if request.user.is_authenticated:
        currentProfile = Profile.objects.get(user=request.user)

        # update current course
        mycurrentCourse = Course.objects.get(title=lan)
        currentProfile = Profile.objects.get(user=request.user)
        currentProfile.currentCourse = mycurrentCourse
        currentProfile.save()
        context = {
            'lan': lan,
            'currentProfile': currentProfile,
        }
        return render(request, 'learning/course.html', context)

    else:
        context = {
            'lan': lan,
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

def ViewGrammarView(request, lan):
    if request.user.is_authenticated:
        Lesson.objects.all()
        course_lessons = Lesson.objects.filter(course__title=lan).order_by('orderingID')

        listLessonTitles = []
        for c in course_lessons:
            listLessonTitles.append(c.strtitle())

        currentProfile = Profile.objects.get(user=request.user)
        thisLevels = currentProfile.levels.all()

        arrayLevels = []
        for c in course_lessons:
            temp = c.level_set.all()
            arrayLevels.append(temp)
        
        arrayLessonTitles = []
        for c in course_lessons:
            arrayLessonTitles.append(c.lessonTitle)

        numMatches = 0

        mylist = [0 for x in range(22)]
        for index, val in enumerate(arrayLessonTitles):
            numMatches = 0
            for index2, val2 in enumerate(thisLevels):
                if (val2.lesson.lessonTitle == val):
                    numMatches+=1
                    mylist[index] = numMatches
        isAuthenticated = True


        
        context = {
            'lan': lan,
            'course_lessons': course_lessons,
            'listLessonTitles': listLessonTitles,
            'thislevels': thisLevels,
            'arrayLevels': arrayLevels,
            'arrayLessonTitles': arrayLessonTitles,
            'numMatches': numMatches,
            'mylist': mylist,
            'isAuthenticated': isAuthenticated,

        }
        return render(request, 'learning/grammar.html', context)

    else:
        Lesson.objects.all()
        course_lessons = Lesson.objects.filter(course__title=lan).order_by('orderingID')
        listLessonTitles = []
        for c in course_lessons:
            listLessonTitles.append(c.strtitle())
        mylist = []
        isAuthenticated = False

        context = {
            'lan': lan,
            'course_lessons': course_lessons,
            'listLessonTitles': listLessonTitles,
            'mylist': mylist,
            'isAuthenticated': isAuthenticated,
        }
        return render(request, 'learning/grammar.html', context)

def ViewLessonView(request, lan, myslug, level):
    if request.user.is_authenticated:
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
        #availableGames = ["translate", "dragdrop", "keyword", "reverse"]
        
        testlevel = Level.objects.get(lesson=lesson, levelNumber=level)
        currentProfile = Profile.objects.get(user=request.user)

        userUnlockedLevel = False
        allLevels = currentProfile.levels.all()
        for a in allLevels:
            if (a.lesson.lessonTitle == lesson.lessonTitle and a.levelNumber == level):
                userUnlockedLevel = True
            #else:
            #    levelInfo.append(0)

        if not userUnlockedLevel:
            return redirect('grammar', lan=lan)

        numLevels = lesson.numLevels



        context = {
            'lesson': lesson,
            'questionanswer': questionanswer,
            'lan': lan,
            'myslug': myslug,
            'questions': questions,
            'questionKeywords': questionKeywords,
            'answers': answers,
            'level': level,
            'testlevel': testlevel,
            'currentProfile': currentProfile,
            'numLevels': numLevels,
        }
        return render(request, 'learning/lesson.html', context)
    else:
        return redirect('home')

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

def updateCurrentCourse(request, lan):    
    if is_ajax(request):
        mycurrentCourse = Course.objects.get(title=lan)
        #mycourses = currentCourse.profile_set.all()
        currentProfile = Profile.objects.get(user=request.user)

        #courseToAdd = currentCourse
        #currentProfile.currentCourse.save(courseToAdd)
        currentProfile.currentCourse = mycurrentCourse
        currentProfile.save()

        context = {
            'lan': lan,
            #'mycourses': mycourses,
            'currentProfile': currentProfile,
        }
        #return render(request, 'learning/home.html', context)
        return HomeView(request)
    else:
        return redirect('home')

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

def levelCompleted(request, lan, myslug, level):
    if is_ajax(request):
        level2 = level+1
        lesson = Lesson.objects.get(course__title=lan, slug=myslug)
        currentLevel = Level.objects.get(lesson=lesson, levelNumber=level2)
        currentProfile = Profile.objects.get(user=request.user)

        levelToAdd = currentLevel
        currentProfile.levels.add(levelToAdd)
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

def mytest5(request):
    return render(request, 'learning/mytest5.html')