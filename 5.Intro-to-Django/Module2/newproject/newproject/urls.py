"""
URL configuration for newproject project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include, reverse
from . import views

urlpatterns = [
    path("admin/", admin.site.urls),
    # path('main/', include('simpleapp.urls')),
    path('', include('simpleapp.urls')),
    # path('', include('simpleapp.templates')),
    path('', include('newapp.urls')),
    # path('test/', include('newapp.urls', namespace='newapp')), # instance namespace
]

handler404 = 'newproject.views.handler404'

"""
view results
http://127.0.0.1:8000/request_headers_dict/
...
http://127.0.0.1:8000/req_parts/
...
http://127.0.0.1:8000/req_msg_http/

for qryview
http://localhost:8000/getuser/?name=John&id=1

http://localhost:8000/showform/

http://localhost:8000/simpleapp/showform/
"""
