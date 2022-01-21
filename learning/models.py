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
    language = models.CharField(max_length=255)
    lessonTitle = models.CharField(max_length=255)
    content = models.TextField(max_length=10000, default='content')
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.lessonTitle)
        super().save(*args, **kwargs)

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Lesson Title- ' + self.lessonTitle

    def get_absolute_url(self):
        return reverse('home')

class Guide(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    language = models.CharField(max_length=255)
    guideTitle = models.CharField(max_length=255)
    content = models.TextField(max_length=10000, default='content')
    orderingID = models.IntegerField()
    slug = models.SlugField(unique=True)

    def __str__(self):
        return 'Course- ' + self.course.title + ' |  Guide Title- ' + self.guideTitle

    def get_absolute_url(self):
        return reverse('home')

    def save(self, *args, **kwargs):
        self.slug = self.slug or slugify(self.guideTitle)
        super().save(*args, **kwargs)