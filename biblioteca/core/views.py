# core/views.py

from django.shortcuts import redirect

def home_redirect(request):
    return redirect('/locacoes/disponibilidade/')
