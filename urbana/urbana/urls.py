from __future__ import absolute_import, unicode_literals

from django.conf import settings
from django.conf.urls import include, url
from django.contrib import admin

from wagtail.wagtailadmin import urls as wagtailadmin_urls
from wagtail.wagtailcore import urls as wagtail_urls
from wagtail.wagtaildocs import urls as wagtaildocs_urls

from search import views as search_views
from about import views as about_views
from machina.app import board

from django.conf.urls.i18n import i18n_patterns

from registration.backends.simple import urls as registration_urls


urlpatterns = [
    url(r'^django-admin/', include(admin.site.urls)),

    url(r'^admin/', include(wagtailadmin_urls)),
    url(r'^documents/', include(wagtaildocs_urls)),

    url(r'^search/$', search_views.search, name='search'),

    url(r'calendar-data/', about_views.get_calendar_data),

    url(r'^auth/', include(registration_urls, namespace='auth')),

    # django-machina forum
    url(r'^markdown/', include('django_markdown.urls')),
    url(r'^forum/', include(board.urls)),
    url(r'', include('leaflet_storage.urls')),
    # umap
    url(r'^umap/', include('umap.urls'))]\
              + i18n_patterns(url(r'^umap/', include('leaflet_storage.urls')))\
              + [url(r'', include(wagtail_urls))]

# urlpatterns += i18n_patterns(
#     # url(r'^umap/', include('leaflet_storage.urls'))
#
# )




if settings.DEBUG:
    from django.conf.urls.static import static
    from django.contrib.staticfiles.urls import staticfiles_urlpatterns

    # Serve static and media files from development server
    urlpatterns += staticfiles_urlpatterns()
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
