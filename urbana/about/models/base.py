from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailadmin.edit_handlers import FieldPanel

from home.models import AbstractBlogIndexPage


class TopMenuPage(Page):

    # TODO rename class / add explanation visible in admin panel
    # (should be clear that this type of page is needed for About site section)

    """
    Despre(About) - Page visible in top menu.
    This page should contain generated listing of all sub pages.
    """

    parent_page_types = ['home.HomePage']
    # subpage_types = ['home.StandardPage', 'home.UniversalBlogIndexPage']

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


class NetworkNewsBlogIndexPage(AbstractBlogIndexPage):
    """
    Another blog - "Stirile Retelei (network news)"
    Index page, visible in menu drop down
    Contains listing of posts
    """
    parent_page_types = ['about.TopMenuPage']  # TODO: created programmatically, should not be
    # created by editor


class InitiativesBlogIndexPage(AbstractBlogIndexPage):
    """
    Another blog - network initiatives
    Index page, visible in menu drop down
    Contains listing of posts
    """
    parent_page_types = ['about.TopMenuPage']  # TODO: created programmatically, should not be created by editor
