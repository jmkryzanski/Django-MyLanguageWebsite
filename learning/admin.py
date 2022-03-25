from django.contrib import admin
from .models import Course, Guide, Lesson, QuestionAnswer, Level

admin.site.register(Course)
admin.site.register(Lesson)
admin.site.register(Level)
admin.site.register(Guide)
admin.site.register(QuestionAnswer)

class LessonAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('lesonTitle',)}

class GuideAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('guideTitle',)}