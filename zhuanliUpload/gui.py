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

class UploadGui(object):       
	def __init__(self):
	    builder = gtk.Builder()
	    builder.add_from_file("gui.glade")
	    builder.connect_signals({ "on_window_destroy" : gtk.main_quit })
	    self.window = builder.get_object("window1")
	    self.window.show()

if __name__ == "__main__":
	app = UploadGui()
	gtk.main()
