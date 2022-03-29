from django.db import models
from django.urls import reverse
from django.contrib.auth.models import User
from django.utils.text import slugify
from autoslug import AutoSlugField
from learning.models import Course, Level

# Create your models here.
class Profile(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    username = models.CharField(max_length=20)
    bio = models.TextField(max_length=100)
    email = models.EmailField(max_length=100, unique=True)
    slug = AutoSlugField(populate_from='user', default='', unique=True)
    course = models.ManyToManyField(Course, blank=True)

    levels = models.ManyToManyField(Level, blank=True)

    def __str__(self):
        return str(self.user)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.user.username)
        super().save(*args, **kwargs)