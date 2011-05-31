import xml.dom.minidom
import os.path
def makeEasyTag(dom, tagname, value, type='text'):
    tag = dom.createElement(tagname)
    text = dom.createTextNode(unicode(value))
    tag.appendChild(text)
    return tag
def checkDir(filename):
    d=os.path.dirname(filename)
    if not os.path.exists(d):
        os.makedirs(d)
    return d
