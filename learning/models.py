from re import T
from statistics import mode
from tokenize import blank_re
from django.db import models
from django.urls import reverse
from django.contrib.auth.models import User
from django.utils.text import slugify
from ckeditor.fields import RichTextField

class Course(models.Model):
    title = models.CharField(max_length=255)
    image = models.ImageField(blank=True, null=True, upload_to="images/")
    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('home')

class Lesson(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    lessonTitle = models.CharField(max_length=255)
    content = models.TextField(default='content', null=True, blank=True)
    richContent = RichTextField(blank=True, null=True)
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)
    
    numLevels = models.IntegerField(default=3, blank=True, null=True)

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.lessonTitle)
        super().save(*args, **kwargs)

    def __str__(self):
        return self.course.title + ' | ' + self.lessonTitle

    def strtitle(self):
        return self.lessonTitle

    def get_absolute_url(self):
        return reverse('home')

class Level(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    levelNumber = models.IntegerField()

    def __str__(self):
        return self.lesson.lessonTitle + ' | ' + str(self.levelNumber)

    def strlevelnumber(self):
        return str(self.levelNumber)

class QuestionAnswer(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE, blank=True, null=True)

    # first question is the one used for dragdrop and keyword, ones after that are acceptable
    # inputs for translation
    question = models.CharField(max_length=255)

    # first answer is used for keyword, ones after that are acceptable
    # inputs for translation
    answer = models.CharField(max_length=255)

    # add field called mainQuestions that shows the main translations of each word in the question
    level = models.IntegerField()
    questionKeyword = models.CharField(max_length=100, default=None, null=True, blank=True)

    def __str__(self):
        return 'Lesson ' + self.lesson.lessonTitle + ' | Question ' + self.question + ' | Answer ' + '| ' + self.answer + ' | Level ' + str(self.level)

    #def __str__(self):
    #    return ' | Question ' + self.question + ' | Answer ' + '| ' + self.answer

    def model_method(self):
        return self.question + ' - '  + self.answer

    def strquestion(self):
        return self.question

    def strquestionkeyword(self):
        return self.questionKeyword
    
    def stranswer(self):
        return self.answer

class Guide(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    guideTitle = models.CharField(max_length=255)
    content = models.TextField(default='content')
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)
    category = models.CharField(max_length=255)
    richContent = RichTextField(blank=True, null=True)

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Guide Category- ' + self.category + ' | Guide Title- ' + self.guideTitle

    def get_absolute_url(self):
        return reverse('home')

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.guideTitle)
        super().save(*args, **kwargs)