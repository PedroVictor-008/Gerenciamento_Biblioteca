from django.db import models

class Autor(models.Model):
    nome = models.CharField(max_length=255)

    def __str__(self):
        return self.nome


class Categoria(models.Model):
    descricao = models.CharField(max_length=100)

    def __str__(self):
        return self.descricao


class Genero(models.Model):
    descricao = models.CharField(max_length=100)

    def __str__(self):
        return self.descricao


class Acervo(models.Model):
    titulo = models.CharField(max_length=255)
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    genero = models.ForeignKey(Genero, on_delete=models.CASCADE)
    sinopse = models.TextField(blank=True, null=True)
    quantidade_exemplares = models.IntegerField()
    isbn = models.CharField(max_length=13, blank=True, null=True)
    estante = models.CharField(max_length=50, blank=True, null=True)
    prateleira = models.CharField(max_length=50, blank=True, null=True)
    autores = models.ManyToManyField(Autor, through='AcervoAutor')

    def __str__(self):
        return self.titulo


class AcervoAutor(models.Model):
    acervo = models.ForeignKey(Acervo, on_delete=models.CASCADE)
    autor = models.ForeignKey(Autor, on_delete=models.CASCADE)

    class Meta:
        unique_together = ('acervo', 'autor')