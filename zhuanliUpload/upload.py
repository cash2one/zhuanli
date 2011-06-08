#!/usr/bin/python
#coding: utf8
from xml.dom import minidom
import urllib2
import urllib
import httplib
import cookielib
import socket
import re
import os
import sys
import pdb
import codecs
import httplib, mimetypes, mimetools, urllib2, cookielib
import glob

def encode_multipart_formdata(fields, files):
    """
    fields is a sequence of (name, value) elements for regular form fields.
    files is a sequence of (name, filename, value) elements for data to be uploaded as files
    Return (content_type, body) ready for httplib.HTTP instance
    """
    BOUNDARY = mimetools.choose_boundary()
    CRLF = '\r\n'
    L = []
    for (key, value) in fields:
        L.append('--' + BOUNDARY)
        L.append('Content-Disposition: form-data; name="%s"' % key)
        L.append('')
        L.append(value)
    for (key, filename, value) in files:
        L.append('--' + BOUNDARY)
        L.append('Content-Disposition: form-data; name="%s"; filename="%s"' % (key, filename))
        L.append('Content-Type: %s' % get_content_type(filename))
        L.append('')
        L.append(value)
    L.append('--' + BOUNDARY + '--')
    L.append('')
    body = CRLF.join(L)
    content_type = 'multipart/form-data; boundary=%s' % BOUNDARY
    return content_type, body

def get_content_type(filename):
    return mimetypes.guess_type(filename)[0] or 'application/octet-stream'


class PatentParser():
    elements=['title','application_number','patent_type','problem_solved','patent_solution','keywords','type_number','patent_pic1file','patent_pic2file','classid','name','tel','address','zip_code' ]
    classIds={'农业':'2', '通信计算机':'3', '食品粮油饮料':'6', '医疗卫生保健':'7', '轻工日用':'8', '文教体育娱乐':'9', '家用电器':'10', '化工石油冶金':'11', '机械加工设备':'12', '建筑建材':'13', '能源采暖炉灶':'14', '交通车辆运输':'15', '造纸纺织服装':'16', '环保除尘采矿':'17', '其他':'18'}
    def __init__(self,xml_file):
        """
        """
        self.xml_file=xml_file
    def getall(self):
        fields=[]
        files=[]
        xmldoc=minidom.parse(self.xml_file)
        patent=xmldoc.firstChild
        for i in PatentParser.elements:
            one={}
            try:
                one[i]=patent.getElementsByTagName(i)[0].firstChild.data.strip().encode('utf8')
            except AttributeError:
                print i
            except Exception:
                print i
            except IndexError:
                print i
            if i in ['patent_pic1file','patent_pic2file']:
                file_content=""
                try:
                    f=open(one[i],'rb')
                    file_content=f.read()
                    f.close()
                except Exception:
                    print "no files %s"  % (one[i])
                    pass
                files.append((i,one[i],file_content))
            elif i == 'classid':
                fields.append((i,PatentParser.classIds[one[i]]))
            else:
                fields.append((i,one[i]))
        return fields,files
        


class Zhuanli88:
    LOGINURL="http://zhuanli.gotoip3.com/e/enews/index.php"
    ADDINFOURL="http://zhuanli.gotoip3.com/e/DoInfo/ecms.php"
    def __init__(self):
        self.cj=cookielib.LWPCookieJar()
    def login(self,uid,psw):
        post_data=urllib.urlencode({'enews':'login','username':uid,'password':psw,'Submit':'登陆'})
        path=Zhuanli88.LOGINURL
        try:
            opener=urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cj))
            opener.addheaders = [('User-agent','Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)')]
            urllib2.install_opener(opener)
            req=urllib2.Request(path,post_data)
            conn=urllib2.urlopen(req)
            out=conn.read()
            return 0
        except Exception:
            print "login failed!"
            return -1
    def add_patent(self,xml_file):
        x=PatentParser(xml_file)
        fields,files=x.getall()
        fields.append(('enews','MAddInfo'))
        fields.append(('mid','9'))
        fields.append(('id',''))
        fields.append(('filepass','1305105844'))
        fields.append(('addnews',''))
        content_type,body=encode_multipart_formdata(fields,files)
        path=Zhuanli88.ADDINFOURL
        headers={
            'Content-Type': content_type,
            'User-agent':'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)'
            }
        opener=urllib2.build_opener(urllib2.HTTPCookieProcessor(self.cj))
        urllib2.install_opener(opener)
        req=urllib2.Request(path,body,headers)
        conn=urllib2.urlopen(req)
        out=conn.read()
        if out[:3]==codecs.BOM_UTF8:
            out=out[3:]
            if sys.platform == "win32":
                enc = 'gbk'
            elif sys.platform == "linux2":
                enc = 'utf8'
            print unicode(out,"utf8").encode(enc)
                                      
        
if __name__=='__main__':
    x=Zhuanli88()
    if x.login(uid='zhangdongmao',psw='89714942')==0:
        xmlfiles=glob.glob("*.xml")
        for f in xmlfiles:
            x.add_patent(f)
    else:
        pass
