from django.shortcuts import render
from django.urls.base import reverse, reverse_lazy
from .forms import PostForm, EditPostForm
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView

from blog.models import Post

class ViewPostView(ListView):
    model = Post
    template_name = 'blog/post.html'
    ordering = ['-id']
    #ordering = ['post_date']

class IndividualPostView(DetailView):
    model = Post
    template_name = 'blog/individualpost.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

class CreatePostView(CreateView):
    model = Post
    form_class = PostForm
    template_name = 'blog/createpost.html'

class EditPostView(UpdateView):
    model = Post
    form_class = EditPostForm
    template_name = 'blog/editpost.html'
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'

class DeletePostView(DeleteView):
    model = Post
    template_name = 'blog/deletepost.html'
    success_url = reverse_lazy('home')
    slug_url_kwarg = 'myslug'
    slug_field = 'slug'