import sys
sys.path.append("../..")
sys.path.append("..")
from input.models import *
from datetime import datetime
lastExcutetime=ExcuteTime.objects.get(pk=1)
now=datetime.now()
patents=Patent.objects.filter(updateTime__gt=lastExcutetime)
