from django.shortcuts import render, redirect
from django.urls.base import reverse_lazy
from .forms import ProfileForm
from .models import Profile, User
from django.views.generic import ListView,UpdateView, DetailView
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.contrib.auth.mixins import PermissionRequiredMixin
from django.http import Http404
from django.contrib.auth.decorators import login_required


#changed from listview to detailview
# cant display other users profiles
'''class ProfileView(DetailView):
    model = Profile
    form_class = ProfileForm
    template_name = 'userprofile/profile.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
'''
def ViewProfileView(request, username):
    user = User.objects.get(username=username)
    return render(request, 'userprofile/profile.html', {"user":user})


@login_required
def EditProfileView(request, username):
    user = User.objects.get(username=username)
    username=username
    form = ProfileForm(request.POST, instance=request.user.profile)
    form.actual_user = request.user
    if request.method == 'POST':
        if form.is_valid():
            form.save()
            #return redirect('profile', myslug=myslug)
            return redirect('home')
    else:
        form = ProfileForm(instance=request.user.profile)

    context = {
        'form': form,
        'username': username,
    }
    return render(request, 'userprofile/editprofile.html', context)

'''
class EditProfileView(LoginRequiredMixin, UpdateView):
    model = Profile
    form_class = ProfileForm
    template_name = 'userprofile/editprofile.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')
    second_form_class = ProfileForm

    #def get_object(self):
    #    return self.request.user
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context["form2"] = ProfileForm(self.request.POST, self.request.FILES, instance = self.request.user.profile) 
        return context

    def post(self, request, *args, **kwargs):
        self.object = self.get_object()

        form2 = self.second_form_class(request.POST, request.FILES,instance=self.request.user.profile)
        if form2.is_valid():
            profile = form2.save(commit=False)
            profile.user = request.user
            profile.save()
            form = self.get_form()
            return self.form_valid(form)
        else:
            return self.form_invalid(form2)
    '''
            
'''
@login_required
def EditProfileView(request, myslug):
    myslug=myslug
    form = ProfileForm(request.POST, instance=request.user.profile)
    form.actual_user = request.user
    if request.method == 'POST':
        if form.is_valid():
            form.save()
            #return redirect('profile', myslug=myslug)
            return redirect('home')
    else:
        form = ProfileForm(instance=request.user.profile)

    context = {
        'form': form,
        'myslug': myslug,
    }
    return render(request, 'userprofile/editprofile.html', context)
    '''




'''
class EditProfileView(UpdateView):
    model = Profile
    form_class = ProfileForm
    template_name = 'userprofile/editprofile.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'
    success_url = reverse_lazy('home')
'''

def profile(request):
    return render(request, 'learning/profile.html')

