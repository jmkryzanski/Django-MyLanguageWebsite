from django import forms
from .models import Profile

class ProfileForm(forms.ModelForm):

    class Meta:
        model = Profile
        fields = ('username', 'bio',)
        widgets = {
            'username': forms.TextInput(attrs={
                'class': 'form-control third-theme fourth-theme-background' ,
                'placeholder': 'Title',
            }),
            'bio': forms.Textarea(attrs={
                'class': 'form-control third-theme fourth-theme-background',
                'placeholder': 'Body',
                'rows': 5,
            }),
        }
