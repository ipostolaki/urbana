from __future__ import absolute_import, unicode_literals

from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

INSTALLED_APPS += ('debug_toolbar', )

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

# django debug toolbar configuration
def show_toolbar(request):
    return True
DEBUG_TOOLBAR_CONFIG = {
    # needed to skip INTERNAL_IPS check, which depends on Docker machine ip
    "SHOW_TOOLBAR_CALLBACK" : show_toolbar,
}