from statistics import mode
from django.db import models
from django.urls import reverse
from django.contrib.auth.models import User

class Course(models.Model):
    title = models.CharField(max_length=255)
    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('home')

class Lesson(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    language = models.CharField(max_length=255)
    lessonTitle = models.CharField(max_length=255)
    content = models.TextField(max_length=10000, default='content')
    orderingID = models.IntegerField()

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Lesson Title- ' + self.lessonTitle

    def get_absolute_url(self):
        return reverse('home')

