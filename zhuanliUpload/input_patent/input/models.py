#coding=utf8
from django.db import models
from django.contrib import admin

type_choices=(
(u"实用新型",u"实用新型"),
(u"发明",u"发明")
)
class Catalogs(models.Model):
    classid=models.IntegerField(unique=True)
    name=models.CharField(max_length=20)
    def __unicode__(self):
        return self.name

class Patent(models.Model):
    classid=models.ForeignKey(Catalogs,verbose_name="行业分类",default="")
    tech_name=models.CharField(max_length=60,verbose_name="技术名称")
    application_number=models.CharField(max_length=60,unique=True,verbose_name="申请号")
    type_name=models.CharField(max_length=60,verbose_name="分类号")
    patent_type=models.CharField(max_length=15,choices=type_choices,default="",verbose_name="专利类型")
    problem_solved=models.CharField(max_length=100,verbose_name="要解决的技术问题")
    patent_solution=models.TextField(verbose_name="技术方案")
    keywords=models.CharField(max_length=50,verbose_name="关键词")
    patent_usage_field=models.CharField(blank=True,max_length=60,verbose_name="用途或技术领域")
    patent_pic1file=models.ImageField(blank=True,verbose_name="附图1",upload_to="images/")
    patent_pic2file=models.ImageField(blank=True,verbose_name="附图1",upload_to="images/")
    name=models.CharField(max_length=20,verbose_name="姓名")
    tel=models.CharField(max_length=20,verbose_name="电话")
    address=models.CharField(max_length=100,verbose_name="地址",blank=True)
    zip_code=models.CharField(max_length=10,verbose_name="邮编",blank=True)
    updateTime=models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
        return self.tech_name 
