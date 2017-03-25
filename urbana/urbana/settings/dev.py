from __future__ import absolute_import, unicode_literals

from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

INSTALLED_APPS += ['debug_toolbar']

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

# django debug toolbar configuration
def show_toolbar(request):
    # TODO: ? needed to enable toolbar on the wagtail admin Preview page(it have no this key in META)
    request.META['wsgi.multiprocess'] = None
    return True
DEBUG_TOOLBAR_CONFIG = {
    # needed to skip INTERNAL_IPS check, which depends on Docker machine ip
    "SHOW_TOOLBAR_CALLBACK" : show_toolbar,
}

DATABASES = {
    'default': {
        'ENGINE': 'django.contrib.gis.db.backends.postgis',
        'NAME': os.environ.get('POSTGRES_DB'),
        'USER': os.environ.get('POSTGRES_USER'),
        'PASSWORD': os.environ.get('POSTGRES_PASSWORD'),
        'HOST': 'pg_database',
        'PORT': '5432',
    }
}