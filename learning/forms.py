from django import forms
from .models import Lesson, Guide

class LessonForm(forms.ModelForm):
    class Meta:
        model = Lesson
        fields = ('course', 'language', 'lessonTitle', 'content')
        widgets = {
            'course': forms.Select(attrs={
                'class': 'form-control',
                'placeholder': 'Course'
            }),
            'language': forms.Textarea(attrs={
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
            'language': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Language'
            }),
            #'lessonTitle': forms.Textarea(attrs={
            #    'class': 'form-control',
            #    'placeholder': 'Title'
            #}),
            'content': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Content'
            }),
        }