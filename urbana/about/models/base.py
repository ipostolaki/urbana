from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailadmin.edit_handlers import FieldPanel

from home.models import AbstractBlogIndexPage


class TopMenuPage(Page):
    """
    Despre(About) - index page visible in top menu.
    This page should display:
     - styled introduction with description of the site (default_desc_string)
     - generated listing of all sub pages.
    """

    parent_page_types = ['home.HomePage']

    # TODO localize?
    default_desc_string = "Este o structură-umbrelă organizată pe orizontală care " \
                          "va interconecta organizațiile neguvernamentale, asociațiile " \
                          "obștești, grupurile de inițiativă și activiștii independenți preocupați " \
                          "de problemele de dezvoltare urbană."

    description = models.CharField(
        max_length=800,
        help_text="RCU descriere",  # TODO localize
        default=default_desc_string
    )

    content_panels = Page.content_panels + [
        FieldPanel('description')
    ]

    is_creatable = False  # part of initial structure: this page should not be created by editor

    class Meta:
        verbose_name = 'Despre Index Page'


class NetworkNewsBlogIndexPage(AbstractBlogIndexPage):
    """
    Another blog - "Stirile Retelei (network news)"
    Index page, visible in menu drop down
    Contains listing of posts
    """
    is_creatable = False  # part of initial structure: this page should not be created by editor
    parent_page_types = ['about.TopMenuPage']


class InitiativesBlogIndexPage(AbstractBlogIndexPage):
    """
    Another blog - network initiatives
    Index page, visible in menu drop down
    Contains listing of posts
    """
    is_creatable = False  # part of initial structure: this page should not be created by editor
    parent_page_types = ['about.TopMenuPage']
