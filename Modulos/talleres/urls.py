##VIEWS - URL - HTML
from django.urls import path, include
from .views import *
from django.contrib.auth.views import LoginView, LogoutView
from . import views


urlpatterns = [
    path('', inicio, name="index"),
    path("register/", register, name="register"),
    path('login/', LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(), name='logout'),
    path('services/', services, name='services'),
    path('cuenta/', cuenta, name='cuenta'),
    path('eliminar_cuenta/', eliminar_cuenta, name='eliminar_cuenta'),
    path('inscribirse/<int:taller_id>/', inscribirse, name='inscribirse'),

]
