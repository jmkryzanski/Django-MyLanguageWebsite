from logging import _levelToName
from django.shortcuts import redirect, render
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse
from userprofile.models import Profile
from learning.models import Level
from .forms import UserCreationForm

def register_view(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            new_user = form.save()
            new_user = authenticate(username=form.cleaned_data['username'],
                                    password=form.cleaned_data['password1'],)
            login(request, new_user)

            defaultLevels = Level.objects.filter(levelNumber=1)
            mylist = []
            for d in defaultLevels:
                mylist.append(d)

            Profile.objects.create(user=new_user, username=new_user.username, bio='bio...', email=new_user.email)

            currentProfile = Profile.objects.get(user=new_user)
            for m in mylist:
                currentProfile.levels.add(m)


            return redirect(reverse('home'))
    else:
        form = UserCreationForm()
    return render(request, 'registration/register.html', {'form': form})

def login_view(request):
    form = AuthenticationForm(data=request.POST or None)
    if request.method == 'POST':
        if form.is_valid():
            user = form.get_user()
            login(request, user)
            return redirect('home')

    return render(request, 'accounts/login.html', {'form': form})

def logout_view(request):
    logout(request)
    return redirect('home')