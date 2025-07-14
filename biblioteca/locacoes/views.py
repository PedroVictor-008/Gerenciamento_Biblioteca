# locacoes/views.py
from .models import Locacao, Acervo
from django.views.generic import ListView
from django.shortcuts import get_object_or_404, redirect
from django.utils import timezone
from .models import Locacao

def realizar_devolucao(request, pk):
    locacao = get_object_or_404(Locacao, pk=pk)
    
    # Atualiza a data de devolução para hoje
    locacao.data_devolucao = timezone.now().date()
    locacao.save()
    
    return redirect('listar_locacoes')

def devolver(request, pk):
    locacao = get_object_or_404(Locacao, pk=pk)
    locacao.data_devolucao = timezone.now()
    locacao.status = 'devolvido'
    locacao.save()
    messages.success(request, 'Livro devolvido com sucesso!')
    return redirect('locacoes:lista')


class LocacaoListView(ListView):
    model = Locacao
    template_name = 'locacoes/lista.html'
    context_object_name = 'locacoes'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['today'] = timezone.now().date()
        return context

from django.views.generic import TemplateView

class DisponibilidadeLivrosView(TemplateView):
    template_name = 'locacoes/disponibilidade.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        livros = Acervo.objects.all()
        disponibilidade = []

        for livro in livros:
            total = livro.quantidade_exemplares
            emprestados = Locacao.objects.filter(acervo=livro, status='emprestado').count()
            disponiveis = total - emprestados

            disponibilidade.append({
                'livro': livro,
                'total': total,
                'emprestados': emprestados,
                'disponiveis': disponiveis,
            })

        context['disponibilidade'] = disponibilidade
        return context
