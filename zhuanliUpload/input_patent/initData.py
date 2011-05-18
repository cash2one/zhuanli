#coding=utf8
import sys 
sys.path.append("../..")
sys.path.append("..")
from input.models import *
classIds={'农业':'2', '通信计算机':'3', '食品粮油饮料':'6', '医疗卫生保健':'7', '轻工日用':'8', '文教体育娱乐':'9', '家用电器':'10', '化工石油冶金':'    11', '机械加工设备':'12', '建筑建材':'13', '能源采暖炉灶':'14', '交通车辆运输':'15', '造纸纺织服装':'16', '环保除尘采矿':'17', '其他':'18'}
for k,v in classIds.iteritems():
	print k,v
	p=Catalogs.objects.create(classid=int(v),name=k)

