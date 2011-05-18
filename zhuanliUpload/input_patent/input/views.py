# Create your views here.
from django.conf.urls.defaults import *
from input.models import *
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.core.context_processors import csrf
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse

def add_csrf(request,**kwargs):
    d=dict(**kwargs)
    d.update(csrf(request))
    return d
def main(request):
    catalogs=Catalogs.objects.all()
    return render_to_response("input/main.html",add_csrf(request,catalogs=catalogs))
def list(request,classid):
    patents=Patents.objects.filter(classid=classid)
    return render_to_response("input/list.html",add_csrf(request,patents=patents))
def detail(request,pk):
    patent=Patent.objects.get(pk=pk)
    return render_to_response("input/detail.html",add_csrf(request,patent=patent))
def post(request):
    pass
