from statistics import mode
from django.db import models
from django.urls import reverse
from django.contrib.auth.models import User
from django.utils.text import slugify

class Course(models.Model):
    title = models.CharField(max_length=255)
    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('home')

class Lesson(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    lessonTitle = models.CharField(max_length=255)
    content = models.TextField(default='content')
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.lessonTitle)
        super().save(*args, **kwargs)

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Lesson Title- ' + self.lessonTitle

    def get_absolute_url(self):
        return reverse('home')

class QuestionAnswer(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    question = models.CharField(max_length=255)
    answer = models.CharField(max_length=255)
    level = models.IntegerField()

    def __str__(self):
        return 'Lesson ' + self.lesson.lessonTitle + ' | Question ' + self.question + ' | Answer ' + '| ' + self.answer

    def model_method(self):
        return self.question + ' - '  + self.answer

    def strquestion(self):
        return self.question
    
    def stranswer(self):
        return self.answer

class Guide(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    guideTitle = models.CharField(max_length=255)
    content = models.TextField(default='content')
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)
    category = models.CharField(max_length=255)

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Guide Category- ' + self.category + ' | Guide Title- ' + self.guideTitle

    def get_absolute_url(self):
        return reverse('home')

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.guideTitle)
        super().save(*args, **kwargs)