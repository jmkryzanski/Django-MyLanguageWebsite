from django import forms
from .models import Lesson, Guide, Course

choices = Course.objects.all().values_list('title', 'title')
choice_list = []
for item in choices:
    choice_list.append(item)

guide_choices = Guide.objects.all().values_list('category', 'category').distinct()
guide_choice_list = []
for item in guide_choices:
    guide_choice_list.append(item)

class LessonForm(forms.ModelForm):
    class Meta:
        model = Lesson
        #fields = ('course', 'language', 'lessonTitle', 'content')
        fields = '__all__'
        widgets = {
            'course': forms.Select(attrs={
                'class': 'form-control',
                'placeholder': 'Course'
            }),
            'language': forms.Select(choices=choice_list,attrs={
                'class': 'form-control',
                'placeholder': 'Language'
            }),
            'lessonTitle': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Title'
            }),
            'content': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Content'
            }),
            'slug': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Slug'
            }),
        }

class GuideForm(forms.ModelForm):
    class Meta:
        model = Guide
        fields = '__all__'
        #fields = ('course', 'language', 'lessonTitle', 'content')
        widgets = {
            'course': forms.Select(attrs={
                'class': 'form-control',
                'placeholder': 'Course'
            }),
            #'language': forms.Textarea(attrs={
            #    'class': 'form-control',
            #    'placeholder': 'Language'
            #}),
            'language': forms.Select(choices=choice_list,attrs={
                'class': 'form-control',
                'placeholder': 'Language'
            }),
            'guideTitle': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Title'
            }),
            #'lessonTitle': forms.Textarea(attrs={
            #    'class': 'form-control',
            #    'placeholder': 'Title'
            #}),
            'content': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Content'
            }),
            'slug': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Slug'
            }),
            'category': forms.Select(choices=guide_choice_list,attrs={
                'class': 'form-control',
                'placeholder': 'Content'
            }),
        }