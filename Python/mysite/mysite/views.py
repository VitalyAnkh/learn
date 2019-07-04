from django.http import HttpResponse
import datetime


def hello(request):
    return HttpResponse("Hello world")


def my_homepage_view(request):
    return HttpResponse("This my home page")


def current_datetime(request):
    now = datetime.datetime.now()
    html = "It is now %s" % now
    return HttpResponse(html)
