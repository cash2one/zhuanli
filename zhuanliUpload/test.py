#!/usr/bin/python
#coding: utf8
from xml.dom import minidom

class PatentParser():
    elements=['title','application_number','tech_name','patent_type','problem_solved','patent_solution','keywords','patent_usage_field','patent_pic1file','patent_pic2file']
    def __init__(self,xml_file):
        """
        """
        self.xml_file=xml_file
    def getall(self):
        one={}
        xmldoc=minidom.parse(self.xml_file)
        patent=xmldoc.firstChild
        for i in PatentParser.elements:
               one[i]=patent.getElementsByTagName(i)[0].firstChild.data.strip()
        return one
        

LOGINURL=""
ADDINFOURL=""
if __name__=='__main__':
    x=PatentParser('patent.xml')
    for k,v in x.getall().items():
        print k,v
