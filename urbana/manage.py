#!/usr/bin/env python
from __future__ import absolute_import, unicode_literals

import sys

if __name__ == "__main__":

    # DJANGO_SETTINGS_MODULE is defined in the env file
    # os.environ.setdefault("DJANGO_SETTINGS_MODULE", "urbana.settings.dev")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)
