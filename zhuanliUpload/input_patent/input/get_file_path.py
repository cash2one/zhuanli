import uuid
import os
import os.path

def get_file_path(instance,filename):
    ext = filename.split('.')[-1]
    filename = "%s.%s" % (uuid.uuid4(), ext)
    return os.path.join('images/uploads/', filename)

