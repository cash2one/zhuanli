from django.db import models
from django.contrib import admin

class patent_models(models.Model):
    title=models.CharField(max_length=60)
    application_number=models.CharField(max_length=60)
    tech_name=models.CharField(max_length=60)
    patent_type=
