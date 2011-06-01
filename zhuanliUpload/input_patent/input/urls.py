from django.conf.urls.defaults import *

urlpatterns=patterns("input.views",
               (r'^$',"main"),
               (r'^list/(\d+)/$','list'),
               (r'^detail/(\d+)/$','detail'),
               (r'^update/(\d+)/$','update'),
               (r'^post/$','post'),
               (r'^delete/(\d+)/$','delete'),
               (r'^gen/$','generate')
 )

