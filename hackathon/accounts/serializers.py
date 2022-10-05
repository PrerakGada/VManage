from rest_framework import serializers
from .models import *
import re
from django.contrib.auth import get_user_model
User = get_user_model()

email_pattern = re.compile(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)")

class RegisterSerializer(serializers.ModelSerializer):
    password= serializers.CharField(max_length = 16, min_length = 8, write_only=True)

    class Meta:
        model = User
        fields = ['email', 'password', 'name','is_organizer','is_admin','contact_number','is_customer']

    # To validate data received
    def validate(self, attrs):
        email = attrs.get('email', ' ')
        password = attrs.get('password')
        if not email_pattern.match(email):
            raise serializers.ValidationError('Please enter a valid email!')
        return attrs

    # To create a new user
    def create(self, validated_data):
        validated_data['is_active'] = True
        #validated_data['is_'] = True
        return User.objects.create_user(**validated_data) 

class LoginSerializer(serializers.ModelSerializer):
    password=serializers.CharField(max_length=32,min_length=8,write_only = True)
    
    class Meta:
        model = User
        fields = ['email','password','name','is_organizer','is_customer']

class myuserdetails(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'
class profileSerializer(serializers.ModelSerializer):
    user = myuserdetails(read_only=True)
    class Meta:
        model = profile
        fields = "__all__"
class createEventSerializer(serializers.ModelSerializer):
    user = myuserdetails(read_only=True)

    class Meta:
        model = Events
        fields = "__all__"

class DocumentSerializer(serializers.ModelSerializer):
    user = myuserdetails(read_only=True)
    
    class Meta:
        model = Documents
        fields = "__all__"
