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

    #  TODO: check that with empty system
    parent_page_types = []  # this page should be not be added to other pages


class AbstractStreamfieldPage(Page):
    # may be used by inheritors which need a StreamField
    body = StreamField(FullStreamBlock())

    search_fields = Page.search_fields + (
        index.SearchField('body'),
    )

    class Meta:
        abstract = True

    content_panels = Page.content_panels + [
        StreamFieldPanel('body'),
    ]

    def get_template(self, request):
        return "home/abstract_streamfield_page.html"


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
    parent_page_types = ['home.HomePage']  # TODO: created programmatically, should not be created by editor


# TODO: is this class used? (tag is used though)
# class StandardIndexPage(Page):
#     """
#     Used for indexes of static(not blog) pages
#     TODO: add hint description for editors.
#     """
#     class Meta:
#         abstract = True
#
#     intro = RichTextField(blank=True)
#
#     search_fields = Page.search_fields + (
#         index.SearchField('intro'),
#     )
#
# StandardIndexPage.content_panels = [
#     FieldPanel('title', classname="full title"),
#     FieldPanel('intro', classname="full"),
# ]