from django.contrib import admin
from .models import Course, Lesson, Post, Profile

admin.site.register(Course)
admin.site.register(Lesson)
admin.site.register(Post)
admin.site.register(Profile)