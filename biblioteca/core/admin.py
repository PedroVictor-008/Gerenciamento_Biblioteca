from django.contrib import admin
from .models import Autor, Categoria, Genero, Acervo, AcervoAutor

admin.site.register(Autor)
admin.site.register(Categoria)
admin.site.register(Genero)
admin.site.register(Acervo)
admin.site.register(AcervoAutor)