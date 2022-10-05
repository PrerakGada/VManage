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
from rest_framework.generics import ListAPIView

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


class profileDetails(viewsets.ModelViewSet):
	queryset = profile.objects.all()
	serializer_class = profileSerializer
	permission_classes = [permissions.IsAuthenticated]

	def get_queryset(self):
		return profile.objects.filter(user=self.request.user)
	
	def perform_create(self,serializer):
		serializer.save(user = self.request.user)

class createEvent(viewsets.ModelViewSet):
    queryset = Events.objects.all()
    serializer_class = createEventSerializer
    permission_classes = (permissions.IsAuthenticated,)
    
    ############ public event List ####################################
    def get_queryset(self):
    	return Events.objects.filter(user=self.request.user)
        
        
       
    def create(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data, context={'request': request})
        serializer.is_valid(raise_exception=True)
        if serializer.is_valid():
            serializer.save(user=self.request.user)
            
            return Response({
                "event": serializer.data,
            })

        else:
            data = serializer.errors
            return Response(data)

class Alleventsview(ListAPIView):
	queryset = Events.objects.all()
	serializer_class = createEventSerializer
	permission_classes = (permissions.IsAuthenticated,)
	def get_queryset(self):
		event =  Events.objects.filter(Q(status='Pending'))
		print(event)
		#serializer = createEventSerializer(event,read_only=True).data
		return event

class createdocumentsubmit(viewsets.ModelViewSet):
	queryset = Documents.objects.all()
	serializer_class = DocumentSerializer
	permission_classes=(permissions.IsAuthenticated,)

	def get_queryset(self):
		return Documents.objects.filter(user=self.request.user)


	def perform_create(self,serializer):
		serializer.save(user = self.request.user)

class createEventEnrolled(viewsets.ModelViewSet):
    queryset = Enrolled_Event.objects.all()
    serializer_class = createEventEnrolledSerializer
    permission_classes = (permissions.IsAuthenticated,)


class globalSearch(ListAPIView):
	permission_classes = (permissions.IsAuthenticated,)

	def get_queryset(self):
		query = self.request.GET.get('query')
		event =  Events.objects.filter(status="Published").filter(Q(tags__in=query)|Q(address__in=query)|Q(pincode__in=query)|Q(event_type__in=query))
		return event

