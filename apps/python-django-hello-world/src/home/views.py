from django.http import HttpResponse
import socket

def homePageView(request):
    return HttpResponse('Hello World from Hostname:' + socket.gethostname())


