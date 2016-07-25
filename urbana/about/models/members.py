from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore.fields import RichTextField
from wagtail.wagtailsearch import index
from wagtail.wagtailadmin.edit_handlers import FieldPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel


class MembersIndexPage(Page):
    """
    Distinct class for page with listing of urbana.md network members.
    """
    @property
    def members_list(self):
        # list should include members, which were explicitly added to the index by the editor
        members_pages = self.get_children().live()
        # wagtail's "specific" property will cast type of Page class into MemberPage,
        # thus "image" field may be accessed in template
        return [member_page.specific for member_page in members_pages]


class MemberPage(Page):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    intro = models.CharField(blank=True, max_length=500)
    description = RichTextField(blank=True)
    telephone = models.CharField(max_length=20, blank=True)
    email = models.EmailField(blank=True)
    image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text='Recommended minimal photo width is 300 px'
    )
    search_fields = Page.search_fields + (
        index.SearchField('first_name'),
        index.SearchField('last_name'),
        index.SearchField('intro'),
        index.SearchField('description'),
    )
    content_panels = [
        FieldPanel('title', classname="full title"),
        FieldPanel('first_name'),
        FieldPanel('last_name'),
        FieldPanel('telephone'),
        FieldPanel('email'),
        FieldPanel('intro', classname="full"),
        FieldPanel('description', classname="full"),
        ImageChooserPanel('image'),
    ]
    parent_page_types = ['about.MembersIndexPage']
    subpage_types = []