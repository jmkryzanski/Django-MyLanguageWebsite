from django.shortcuts import render
from django.urls.base import reverse, reverse_lazy
from .forms import PostForm, EditPostForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from userprofile.models import Profile

from blog.models import Post

class ViewPostView(ListView):
    model = Post
    template_name = 'blog/post.html'
    ordering = ['-id']
    def get_context_data(self,*args, **kwargs):
        context = super(ViewPostView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context
    #ordering = ['post_date']

class IndividualPostView(DetailView):
    model = Post
    template_name = 'blog/individualpost.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

    def get_context_data(self,*args, **kwargs):
        context = super(IndividualPostView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context

class CreatePostView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = Post
    form_class = PostForm
    template_name = 'blog/createpost.html'

    def test_func(self):
        return self.request.user.is_superuser

    def get_context_data(self,*args, **kwargs):
        context = super(CreatePostView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context

class EditPostView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
    form_class = EditPostForm
    template_name = 'blog/editpost.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

    def test_func(self):
        return self.request.user.is_superuser

    def get_context_data(self,*args, **kwargs):
        context = super(EditPostView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context

class DeletePostView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Post
    template_name = 'blog/deletepost.html'
    success_url = reverse_lazy('home')
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

    def test_func(self):
        return self.request.user.is_superuser

    def get_context_data(self,*args, **kwargs):
        context = super(DeletePostView, self).get_context_data(*args,**kwargs)
        context['currentProfile'] = Profile.objects.get(user=self.request.user)
        return context
    #def test_func(self):
    #    return self.request.user.username.endswith('ski')