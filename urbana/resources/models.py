from django.db import models

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailcore.fields import RichTextField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, InlinePanel
from wagtail.wagtaildocs.edit_handlers import DocumentChooserPanel

from modelcluster.fields import ParentalKey


class ResourcesIndexPage(Page):
    """
    Page which may contain only ResourcePage as it's subpages
    """
    subpage_types = ['resources.ResourcePage']
    parent_page_types = ['home.StandardIndexPage']


class ResourcePageRelatedDocument(Orderable, models.Model):
    """
    Class used to store multiple documents related to a specific ResourcePage
    """
    document = models.ForeignKey(
        'wagtaildocs.Document',
        null=True,
        blank=True,
        related_name='+'
    )
    page = ParentalKey('resources.ResourcePage', related_name='related_documents')

    panels = [
        DocumentChooserPanel('document'),
    ]


class ResourcePage(Page):
    """
    TODO: localized helpers description
    """
    description = RichTextField(blank=True, help_text="Descriere de document")
    InlinePanel('related_links', label="Related links"),

    content_panels = Page.content_panels + [
        FieldPanel('description', classname="full"),
        InlinePanel('related_documents', label="Document"),
    ]

    subpage_types = []
    parent_page_types = ['resources.ResourcesIndexPage']
