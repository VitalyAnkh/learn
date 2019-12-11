from django.shortcuts import render

from django.http import HttpResponse


def home_page(request):
    return HttpResponse("<html><title >To-Do Lists</title><body><h1> hello </h1></body></html >")
