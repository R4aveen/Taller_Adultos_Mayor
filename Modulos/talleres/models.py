import datetime
from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class TipoTaller(models.Model):
    nombre = models.CharField(max_length=30, default='default_value')

    def __str__(self):
        return self.nombre




class AdultoMayor(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    rut = models.CharField(max_length=15, primary_key=True)
    apellidoPaterno = models.CharField(max_length=35)
    apellidoMaterno = models.CharField(max_length=35)
    nombres = models.CharField(max_length=35)
    fechaNac = models.DateField()
    genero = [
        ('F', 'Femenino'),
        ('M', 'Masculino')
    ]
    sexo = models.CharField(max_length=1, choices=genero, default='F')
    vigencia = models.BooleanField(default=True)

    def nombreCompleto(self):
        txt = "{0} {1}, {2}"
        return txt.format(self.apellidoPaterno, self.apellidoMaterno, self.nombres)

    def __str__(self):
        txt = "{0} / {1}"
        if self.vigencia:
            estadoAdulto = "VIGENTE"
        else:
            estadoAdulto = "NO FORMULA"
        return txt.format(self.nombreCompleto(), estadoAdulto)

class Talleres(models.Model):
    codigo = models.CharField(max_length=2, primary_key=True)
    nombre = models.CharField(max_length=20)
    descripcion = models.CharField(max_length=200)
    cupo_maximo = models.PositiveSmallIntegerField(default=15)
    cupo_actual = models.PositiveSmallIntegerField()
    tipo = models.ForeignKey(TipoTaller, on_delete=models.CASCADE)
    imagen = models.ImageField(upload_to='talleres_images/', default='default_image.jpg')
    inscritos = models.ManyToManyField(AdultoMayor, through='InscripcionTaller', related_name='talleres_inscritos')

    def __str__(self):
        txt = "{0} (Tipo: {1})"
        return txt.format(self.nombre, self.tipo)

class InscripcionTaller(models.Model):
    usuario = models.ForeignKey(AdultoMayor, on_delete=models.CASCADE)
    taller = models.ForeignKey(Talleres, on_delete=models.CASCADE)
    fecha = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Inscripción a taller #{self.id} - {self.usuario.user.username}"

class TallerTomado(models.Model):
    id = models.AutoField(primary_key=True)
    adulto = models.ForeignKey(AdultoMayor, null=False, blank=False, on_delete=models.CASCADE)
    taller = models.ForeignKey(Talleres, null=False, blank=False, on_delete=models.CASCADE)
    fechaInscripcion = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        txt = "{0} isncrito {1} en el taller {2}/ Fecha: {3} "
        if self.adulto.genero == "F":
            letraSexo = "a"
        else:
            letraSexo = "o"
        fechIns = self.fechaInscripcion.strftime("%A %d/%m/%Y %H:%M:%S")
        return txt.format(self.adulto.nombreCompleto(), letraSexo, self.taller, fechIns)  