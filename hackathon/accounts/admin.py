from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import *
from django.contrib.auth import get_user_model

User = get_user_model()

# Register your models here.

class UserAdmin(UserAdmin):
    model = User
    list_display = ['email', 'name','is_active','is_admin','is_customer','is_organizer']
    list_filter =['email', 'name','is_active','is_admin','is_customer','is_organizer']

    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Personal info', {'fields': ('name','contact_number')}),
        ('Permissions', {'fields': ('is_active','is_staff','is_admin','is_customer','is_organizer')}),
    )

    add_fieldsets = (
        (None, {
            'classes': ('wide,'),
            'fields': ('email', 'password1', 'password2', 'name',
             'is_staff','is_admin','is_customer','is_organizer'),
        }),
    )

    search_fields = ('email',)
    ordering = ('email',)
    filter_horizontal = ()

admin.site.register(User, UserAdmin)