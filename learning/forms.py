from django import forms
from .models import Lesson

class LessonForm(forms.ModelForm):
    class Meta:
        model = Lesson
        fields = ('course', 'language', 'lessonTitle', 'content')
        widgets = {
            'course': forms.Select(attrs={
                'class': 'form-control',
                'placeholder': 'course'
            }),
            'language': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Body'
            }),
            'lessonTitle': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Body'
            }),
            'content': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'content'
            }),
        }