from django.shortcuts import render

# Create your views here.
from django.shortcuts import render

from django.contrib.auth import authenticate,login

from rest_framework.authtoken.models import Token
from rest_framework import status,permissions,viewsets
from .models import *
from .serializers import *
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.generics import GenericAPIView
from rest_framework.views import APIView
from django.db.models import F, ExpressionWrapper, Q
from rest_framework import status,permissions
class RegisterAPI(GenericAPIView):
	
	serializer_class = RegisterSerializer
	
	def post(self,request,*args,**kwargs):
		data = request.data
		serializer = self.serializer_class(data=data)
		serializer.is_valid(raise_exception = True)
		user = serializer.save()
		if not user.is_active:
			user.is_active = True
			user.save()
		token = Token.objects.create(user=user)
		
		return Response({'token' : token.key,'email' : user.email, 'name' : user.name},status = status.HTTP_200_OK)


class LoginAPI(GenericAPIView):
	permission_classes=[permissions.AllowAny]
	serializer_class = LoginSerializer
	
	def post(self,request,*args,**kwargs ):
		email = request.data.get('email')
		password = request.data.get('password')
		print(email,password)
		user = authenticate(username = email, password = password)
		print(user)
		if user :
			login(request,user)
			serializer = self.serializer_class(user)
			token = Token.objects.get(user=user)
			return Response({'token' : token.key,'email' : user.email,'name' : user.name, 'is_organizer': user.is_organizer, 'is_admin': user.is_admin,'is_customer':user.is_customer},status = status.HTTP_200_OK)
		return Response('Invalid Credentials',status = status.HTTP_404_NOT_FOUND)


# class LoginAPIView(generics.GenericAPIView):
# 	serializer_class = LoginSerializer
# 	def post(self, request):
# 		serializer = self.serializer_class(data=request.data)
# 		serializer.is_valid(raise_exception=True)
# 		return Response(serializer.data, status=status.HTTP_200_OK)