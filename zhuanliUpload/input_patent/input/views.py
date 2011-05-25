# Create your views here.
from django.conf.urls.defaults import *
from django.conf import settings
from input.models import *
from django.forms import ModelForm
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.core.context_processors import csrf
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse


class PatentForm(ModelForm):
    class Meta:
        model=Patent

def add_csrf(request,**kwargs):
    d=dict(**kwargs)
    d.update(csrf(request))
    return d
def main(request):
    catalogs=Catalogs.objects.all()
    return render_to_response("input/main.html",add_csrf(request,catalogs=catalogs))
def list(request,classid):
    patents=Patent.objects.filter(classid=classid)
    return render_to_response("input/list.html",add_csrf(request,patents=patents))

def detail(request,pk):
    patent=Patent.objects.get(pk=pk)
    if request.method=="POST":
        patent_form=PatentForm(request.POST,request.FILES,instance=patent)
        print request.FILES
        if patent_form.is_valid():
            patent=patent_form.save()
    patent_form=PatentForm(instance=patent)
    return render_to_response("input/detail.html",add_csrf(request,patent_form=patent_form,pk=pk))

def delete(request,pk):
    patent=Patent.objects.get(pk=pk)
    img1=patent.patent_pic1file
    img2=patent.patent_pic2file
    patent.delete()
    #TODO delete pictures
    return HttpResponseRedirect(reverse("input.views.main"))

def post(request):
    if request.method=="POST":
        patent_form=PatentForm(request.POST,request.FILES)
        if patent_form.is_valid():
            new_patent=patent_form.save()
            return HttpResponseRedirect(reverse("input.views.detail"))
    else:
        patent_form=PatentForm()
    return render_to_response("input/post.html",add_csrf(request,patent_form=patent_form))
    
