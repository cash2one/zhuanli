import sys
sys.path.append("../..")
sys.path.append("..")
from input.models import *
from datetime import datetime
now=datetime.now()
lastUpate=
Patent.objects.filter(updateTime_gte=datetime.now())
