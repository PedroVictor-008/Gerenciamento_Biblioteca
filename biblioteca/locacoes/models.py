from django.db import models
from usuarios.models import Aluno, Funcionario
from core.models import Acervo

class Locacao(models.Model):
    aluno = models.ForeignKey(Aluno, on_delete=models.CASCADE)
    funcionario = models.ForeignKey(Funcionario, on_delete=models.CASCADE)
    acervo = models.ForeignKey(Acervo, on_delete=models.CASCADE)
    data_hora_locacao = models.DateTimeField(auto_now_add=True)
    data_devolucao = models.DateTimeField(blank=True, null=True)
    STATUS_CHOICES = [
        ('emprestado', 'Emprestado'),
        ('devolvido', 'Devolvido'),
    ]

    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='emprestado')


    def __str__(self):
        return f"{self.aluno.nome} - {self.acervo.titulo}"
