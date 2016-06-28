from django.conf import settings


def environment_processor(request):

    # settings.OUTSIDE is defined by OS environment variable
    # used to enable features needed only in the development environment
    to_context = {'outside': settings.OUTSIDE}

    return to_context