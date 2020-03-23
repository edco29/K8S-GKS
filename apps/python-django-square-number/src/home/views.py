from django.http import HttpResponse
import socket
import random

def homePageView(request):
    number = random.randrange(1,1000)
    square = number*number
    return HttpResponse(' square of  ' + str(number)+ " is " + str(square))


