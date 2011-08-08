#!/usr/bin/env python

# First run tutorial.glade through gtk-builder-convert with this command:
# gtk-builder-convert tutorial.glade tutorial.xml
# Then save this file as tutorial.py and make it executable using this command:
# chmod a+x tutorial.py
# And execute it:
# ./tutorial.py

import pygtk
pygtk.require("2.0")
import gtk
from threading import Thread
import gobject
from upload import Zhuanli88
import os
import glob

gobject.threads_init()

class UploadGui(object):       
	def __init__(self):
	    builder = gtk.Builder()
	    builder.add_from_file("gui.glade")
	    #builder.connect_signals({ "on_window_destroy" : gtk.main_quit })
	    builder.connect_signals(self)
	    self.zhuanli=Zhuanli88()
	    self.window = builder.get_object("window")
	    self.statusbar=builder.get_object("statusbar")
	    self.text_buffer=builder.get_object("textview").get_buffer()
	    self.button=builder.get_object("button")
	    self.filechooser=builder.get_object("filechooserbutton")
	    self.progressbar=builder.get_object("progressbar")
	    self.window.show()
	def on_window_destroy(self,widget,data=None):
		gtk.main_quit()
	def add_patent(self,dir):
		os.chdir(dir)
		xmlfiles=glob.glob("*.xml")
		totalLenth=len(xmlfiles)
		for index,filename in enumerate(xmlfiles):
			self.zhuanli.add_patent(filename)
			gobject.idle_add(self.updateGui,((index+1)/float(totalLenth),filename))
#		gobject.idle_add(lambda 
	def updateGui(self,data):
		fraction=data[0]
		log=data[1]
		iter=self.text_buffer.get_end_iter()
		self.text_buffer.insert(iter,log+'\n')
		self.progressbar.set_fraction(fraction)

	def on_button_clicked(self,widget,data=None):
		print self.filechooser.get_filename()
		self.button.set_sensitive(False)
		if self.zhuanli.login('zl88','sun5kong')==0:
			print "login ok"
			Thread(target=self.add_patent,args=(self.filechooser.get_filename(),)).start()
		else:
			print "login failed,check the login name and password"
			self.button.set_sensitive(True)
		
if __name__ == "__main__":
	app = UploadGui()
	gtk.main()
