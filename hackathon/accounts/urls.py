from django.urls import path
from . import views
from django.conf.urls import include
urlpatterns = [
	path('register', views.RegisterAPI.as_view(), name = 'Registration'),
	path('login', views.LoginAPI.as_view(), name = 'Login'),
]