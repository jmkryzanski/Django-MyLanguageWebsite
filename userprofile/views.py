from django.shortcuts import render
from django.urls.base import reverse, reverse_lazy
from .forms import ProfileForm
from .models import Profile
from django.views.generic import ListView,UpdateView

# Create your views here.
class ProfileView(ListView):
    model = Profile
    form_class = ProfileForm
    template_name = 'userprofile/profile.html'

class EditProfileView(UpdateView):
    model = Profile
    form_class = ProfileForm
    template_name = 'userprofile/editprofile.html'
    success_url = reverse_lazy('home')

def profile(request):
    return render(request, 'learning/profile.html')