"""
TODO:
restrict adding reserved indexes for user
structural pages creation on initial migrations
"""

from __future__ import absolute_import, unicode_literals

from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, StreamFieldPanel
from wagtail.wagtailsearch import index

from .streamfield_blocks import FullStreamBlock
from .blogs import AbstractBlogIndexPage


class HomePage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="full")
    ]

    is_creatable = False  # part of initial structure: this page should not be created by editor


class AbstractStreamfieldPage(Page):
    # may be used by inheritors which need a StreamField with FullStreamBlock
    class Meta:
        abstract = True

    body = StreamField(FullStreamBlock())

    def get_template(self, request):
        return "home/abstract_streamfield_page.html"

    search_fields = Page.search_fields + (
        index.SearchField('body'),
    )

    content_panels = Page.content_panels + [
        StreamFieldPanel('body'),
    ]

    subpage_types = []


class StandardPage(AbstractStreamfieldPage):
    """
    Standard page which may be added by Editor when a page with rich static content is needed.
    Template – same as for parent class.
    """
    subpage_types = []


class UrbanBlogIndexPage(AbstractBlogIndexPage):
    """
    Blog index for "Stiri Urbane (urban news)"
    Index page, visible in menu
    Contains listing of posts
    """
    is_creatable = False  # part of initial structure: this page should not be created by editor
    parent_page_types = ['home.HomePage']


class StandardIndexPage(Page):
    """
    Used for indexes of static(not blog) pages
    TODO: add hint description for editors.
    """

    intro = RichTextField(blank=True)

    search_fields = Page.search_fields + (
        index.SearchField('intro'),
    )

StandardIndexPage.content_panels = [
    FieldPanel('title', classname="full title"),
    FieldPanel('intro', classname="full"),
]