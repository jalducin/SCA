from django.db import models
class Activo(models.Model):
    nombre = models.CharField(max_length=100)
    ...