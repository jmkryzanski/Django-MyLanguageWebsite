from django import forms
from .models import Lesson, Post, Profile

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Title',
            }),
            'body': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Body'
            }),
        }

class EditPostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = '__all__'
        widgets = {
            'title': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Title'
            }),
            'body': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Body'
            }),
        }

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

class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('username', 'bio')
        widgets = {
            'username': forms.TextInput(attrs={
                'class': 'form-control',
                'placeholder': 'Title',
            }),
            'bio': forms.Textarea(attrs={
                'class': 'form-control',
                'placeholder': 'Body'
            }),
        }
