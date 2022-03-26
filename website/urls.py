from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/', include('accounts.urls')),
    path('', include('learning.urls')),
    path('blog/', include('blog.urls')),
    path('profile/', include('userprofile.urls')),
    path('contact/', include('contact.urls')),
    path('excel/', include('excel.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
