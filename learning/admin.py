from django.contrib import admin
from .models import Course, Guide, Lesson

admin.site.register(Course)
admin.site.register(Lesson)
admin.site.register(Guide)

class LessonAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('lesonTitle',)}

class GuideAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('guideTitle',)}