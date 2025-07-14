# locacoes/urls.py

from django.urls import path
from .views import LocacaoListView, realizar_devolucao, devolver, DisponibilidadeLivrosView

urlpatterns = [
    path('', LocacaoListView.as_view(), name='listar_locacoes'),
    path('devolver/<int:pk>/', realizar_devolucao, name='realizar_devolucao'),
    path('disponibilidade/', DisponibilidadeLivrosView.as_view(), name='disponibilidade_livros'),
]
