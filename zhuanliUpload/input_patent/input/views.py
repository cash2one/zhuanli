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
from datetime import datetime
from utils import makeEasyTag,checkDir
import codecs
import xml.dom.minidom
import os.path
import shutil


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
    catalogs=Catalogs.objects.all()
    patents=Patent.objects.filter(classid=classid)
    return render_to_response("input/list.html",add_csrf(request,patents=patents,catalogs=catalogs))

def detail(request,pk):
    catalogs=Catalogs.objects.all()
    patent=Patent.objects.get(pk=pk)
    return render_to_response("input/detail.html",dict(patent=patent,pk=pk,catalogs=catalogs))
    
def update(request,pk):
    catalogs=Catalogs.objects.all()
    patent=Patent.objects.get(pk=pk)
    if request.method=="POST":
        patent_form=PatentForm(request.POST,request.FILES,instance=patent)
        if patent_form.is_valid():
            patent=patent_form.save()
            return HttpResponseRedirect(reverse('input.views.detail',args=[pk]))
    patent_form=PatentForm(instance=patent)
    return render_to_response("input/update.html",add_csrf(request,patent_form=patent_form,pk=pk,catalogs=catalogs))

def delete(request,pk):
    patent=Patent.objects.get(pk=pk)
    img1=patent.patent_pic1file
    img2=patent.patent_pic2file
    if img1:
        img1.delete()
    if img2:
        img2.delete()
    patent.delete()
    return HttpResponseRedirect(reverse("input.views.main"))

def post(request):
    catalogs=Catalogs.objects.all()
    if request.method=="POST":
        patent_form=PatentForm(request.POST,request.FILES)
        if patent_form.is_valid():
            new_patent=patent_form.save()
            return HttpResponseRedirect(reverse("input.views.detail",args=[new_patent.pk]))
    else:
        patent_form=PatentForm()
    return render_to_response("input/post.html",add_csrf(request,patent_form=patent_form,catalogs=catalogs))


def generate(request):
    catalogs=Catalogs.objects.all()
    lastExcutetime=ExcuteTime.objects.get(pk=1)
    now=datetime.now()
    xmlfileList=[]
    patents=Patent.objects.filter(updateTime__gt=lastExcutetime.excuteTime).values()
#   patents=Patent.objects.values()
    impl=xml.dom.minidom.getDOMImplementation()
    i=0
    for patent in patents:
        dom=impl.createDocument(None,'patent',None)
        root=dom.documentElement
        filename=os.path.join(settings.MEDIA_ROOT,'output',now.strftime('%Y%m%d%H'),'p'+str(i)+'.xml')
        d=checkDir(filename)
        for k,v in patent.iteritems():
            if k == 'updateTime' or  k == 'id' :
                continue
            if k == 'classid_id':
                v=Catalogs.objects.get(pk=v).name
                k=u'classid'
            if k in ('patent_pic2file','patent_pic1file'):
                if v:
                    shutil.copy(os.path.join(settings.MEDIA_ROOT,v),d)
                    v=os.path.basename(v)
            item=makeEasyTag(dom,k,v)
            root.appendChild(item)
        i=i+1
        f=file(filename,'w')
        writer=codecs.lookup('utf8')[3](f)
        dom.writexml(writer,encoding='utf-8',newl='\r\n')
        xmlfileList.append(filename)
    lastExcutetime.excuteTime=now
    lastExcutetime.save()
    return render_to_response("input/gen.html",add_csrf(request,xmls=xmlfileList,catalogs=catalogs))
