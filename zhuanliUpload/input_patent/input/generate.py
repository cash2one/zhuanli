import sys
import xml.dom.minidom
from makeEasyTag import makeEasyTag
sys.path.append("../..")
sys.path.append("..")
from input.models import *
from datetime import datetime
lastExcutetime=ExcuteTime.objects.get(pk=1)
now=datetime.now()
patents=Patent.objects.filter(updateTime__gt=lastExcutetime).values()
impl=xml.dom.minidom.getDOMImplementation()
dom=impl.createDocument(None,'patent',None)
root=dom.documentElement
for i in patents:
    print i
