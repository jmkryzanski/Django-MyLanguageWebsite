from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/', include('accounts.urls')),
    path('', include('learning.urls')),
    path('blog/', include('blog.urls')),
    path('profile/', include('userprofile.urls')),
    path('contact/', include('contact.urls')),
]
