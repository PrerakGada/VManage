from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.contrib.auth.models import AbstractUser
from rest_framework.authtoken.models import Token
# Create your models here.

class UserManager(BaseUserManager):
    def create_user(self, email, password, **extra_fields):
        if not email:
            raise ValueError('The Email must be set')
        user = self.model(email=self.normalize_email(email), **extra_fields)
        user.set_password(password)
        user.save()
        return user

    def create_superuser(self, email, password, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        extra_fields.setdefault('is_active', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Superuser must have is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Superuser must have is_superuser=True.')
        return self.create_user(email, password, **extra_fields)

class User(AbstractUser):
    username					= models.CharField(max_length=15,null=True,blank=True,default="")
    is_customer                 = models.BooleanField('customer status', default=False)
    is_organizer                = models.BooleanField('organizer status', default=False)
    is_admin                    = models.BooleanField(default=False)
    #is_active 					= models.BooleanField(default=200)
    email                       = models.EmailField(verbose_name="email", max_length=80,primary_key=True)
    contact_number              = models.CharField(max_length=15,null=True, blank=True,default='')
    date_joined 				= models.DateTimeField(verbose_name='date joined', auto_now_add=True)
    name 						= models.CharField(max_length=255)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS=[] 
    objects = UserManager()


    def __str__(self):
        return self.name

    @property
    def token(self):
        token = Token.objects.get(user=User.objects.get(email=self.email))
        return token.key
