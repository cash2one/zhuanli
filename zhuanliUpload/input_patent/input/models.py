from django.db import models
from django.contrib import admin

classChoices={'2':'农业' '3':'通信计算机' '6':'食品粮油饮料' '7':'医疗卫生保健' '8':'轻工日用' '9':'文教体育娱乐' '10':'家用电器' '11':'化工石油冶金' '12':'机械加工设备' '13':'建筑建材' '14':'能源采暖炉灶' '15':'交通车辆运输' '16':'造纸纺织服装' '环保除尘采矿':'17' '其他':'18'}
class patent_models(models.Model):
    title=models.CharField(max_length=60)
    application_number=models.CharField(max_length=60)
    tech_name=models.CharField(max_length=60)
    patent_type=models.IntegerField(choices=classChoices)
