from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
import requests
from rest_framework import viewsets
from .forms import NewUserForm
from django.contrib.auth import login
from django.contrib.auth import logout
from django.contrib import messages
from django.http import JsonResponse
# Create your views here.


def inicio(request):
    return render(request,"index.html")


def register(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			messages.success(request, "Registration successful." )
			return redirect("cuenta")
		messages.error(request, "Unsuccessful registration. Invalid information.")
	form = NewUserForm()
	return render (request=request, template_name="registration/register.html", context={"register_form":form})

def services(request):
    talleres = Talleres.objects.all()
    return render(request,"services.html",{'talleres' : talleres})

@login_required
def cuenta(request):
    user = request.user
    try:
        adulto_mayor = user.adultomayor
    except AdultoMayor.DoesNotExist:
        adulto_mayor = None
    if request.method == 'POST':
        form = AdultoMayorForm(request.POST, instance=adulto_mayor)
        if form.is_valid():
            adulto_mayor = form.save(commit=False)
            adulto_mayor.user = user
            adulto_mayor.save()
            return redirect('cuenta')
    else:
        form = AdultoMayorForm(instance=adulto_mayor)
    return render(request, 'cuenta.html', {'form': form,'usuario': adulto_mayor})


@login_required
def eliminar_cuenta(request):
    if request.method == 'POST':
        request.user.delete()
        logout(request)
        return redirect('inicio')

    return render(request, 'index.html')

@login_required
def inscribirse(request, taller_id):
    taller = get_object_or_404(Talleres, codigo=taller_id)
    usuario = request.user

    try:
        adulto_mayor = usuario.adultomayor
    except AdultoMayor.DoesNotExist:
        messages.error(request, 'Debes ser un Adulto Mayor para inscribirte')
        return redirect('services')
    
    if not usuario.is_authenticated:
        messages.warning(request, 'Debes iniciar sesión para inscribirte.')
        return redirect('login')

    if taller.inscripciontaller_set.filter(usuario=adulto_mayor).exists():
        messages.warning(request, 'Ya estás inscrito en este taller')
        return redirect('services')

    InscripcionTaller.objects.create(usuario=adulto_mayor, taller=taller)
    
    if taller.cupo_actual > 0:
        taller.cupo_actual -= 1
        taller.save()
    
    messages.success(request, 'Inscripción exitosa')
    return redirect('services')
