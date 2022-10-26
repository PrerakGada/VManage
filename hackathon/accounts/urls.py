from django.urls import path
from . import views
from django.conf.urls import include
from rest_framework import routers
router = routers.DefaultRouter(trailing_slash=False)

router.register('create-event', views.createEvent, basename='createEvent' ) 
router.register('profile',views.profileDetails, basename='profile')
router.register('create-documemt',views.createdocumentsubmit,basename='create')

router.register('create-event-enrolled', views.createEventEnrolled,basename='create-event-enroll')
urlpatterns = [
	path('', include(router.urls)),
	path('register', views.RegisterAPI.as_view(), name = 'Registration'),
	path('login', views.LoginAPI.as_view(), name = 'Login'),
	path('Alleventsview',views.Alleventsview.as_view(), name = 'alleventsview'),
	path('poll-email-cron', views.sendHTMLEmail, name='poll-email-cron'),
]