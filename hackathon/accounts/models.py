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
def user_directory_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return 'user_{0}/{1}'.format(instance.user.name, filename)

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
class Events(models.Model):
	event_status                       = (('Pending', 'Pending'), ('Published', 'Published') , ('Rejected', 'Rejected') )  
	user                               = models.ForeignKey(User, on_delete=models.CASCADE)
	tags 							   = models.CharField(max_length=255,blank=True,null=True)
	title                              = models.CharField(max_length=255, blank=True, null=True)
	event_held_date                    = models.DateField(blank=True, null=True)
	event_held_time                    = models.TimeField(blank=True, null=True)
	details                            = models.TextField(blank=True, null=True)
	#event_details_delta                           = models.TextField(blank=True, null=True)
	create_date                        = models.DateField(auto_now_add=True)
	event_type                         = models.CharField(max_length=255, blank=True, null=True)
	video_link                         = models.CharField(max_length=250, null=True, blank=True)
	#if online
	online_link                        = models.CharField(max_length=255, blank=True, null=True)
	login_details                      = models.TextField(blank=True, null=True)

	#if offline
	address                             = models.TextField(blank=True, null=True)
	pincode                             = models.CharField(max_length=70, blank=True, null=True)

	event_image                         = models.ImageField(upload_to=user_directory_path, blank=True, null=True)

	views                               = models.IntegerField(default=0)
	total_report_abuse                  = models.IntegerField(default=0)

	status                              = models.CharField(max_length=25, choices=event_status, blank=True)
	 
	######  for admin
	review_by           = models.ForeignKey(User, on_delete=models.CASCADE,related_name="review_by_admin", blank=True, null=True )   
	is_approve          = models.BooleanField(default=False) #
	is_reject           = models.BooleanField(default=False) #
	reason              = models.CharField(max_length=255, blank=True, null=True)
	update_date         = models.DateTimeField(blank=True, null=True)
	class Meta:
	    ordering =['-event_held_date']
class profile(models.Model):
	user = models.ForeignKey(User, related_name = 'profiledetials', on_delete=models.CASCADE)
	profile_pic = models.ImageField(null=True,blank=True)
	points 		= models.IntegerField(null=True,blank=True)

class Documents(models.Model):
	user = models.ForeignKey(User,on_delete=models.CASCADE)
	organization_background = models.CharField(max_length=255, blank=True, null=True)
	organization_logo = models.ImageField(upload_to=user_directory_path, blank=True, null=True)
	organiztion_paper = models.ImageField(upload_to=user_directory_path, blank=True, null=True)
	organization_website = models.CharField(max_length=255, blank=True)
	organization_knownfor = models.CharField(max_length=255, blank=True)
	is_verified = models.BooleanField(default=False)
	is_reject = models.BooleanField(default=False)







