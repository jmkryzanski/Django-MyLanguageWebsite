from django.contrib import admin
from .models import Question, Choice

admin.site.register(Question)
admin.site.register(Choice)

class QuestionAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('question_text',)}

class ChoiceAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('choice_text',)}