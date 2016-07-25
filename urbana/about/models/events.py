from datetime import date

from django.db import models

from wagtail.wagtailcore.models import Page
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailsearch import index
from wagtail.wagtailadmin.edit_handlers import FieldPanel, StreamFieldPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel

from home.models.streamfield_blocks import FullStreamBlock


class EventIndexPage(Page):

    intro = RichTextField(blank=True)

    @property
    def events(self):
        # Get list of live event pages that are descendants of this page
        events = EventPage.objects.live().descendant_of(self)
        # Filter events list to get ones that are either
        # running now or start in the future
        events = events.filter(date_from__gte=date.today())
        # Order by date
        events = events.order_by('date_from')
        return events

    content_panels = Page.content_panels + [FieldPanel('intro', classname="full")]

    search_fields = Page.search_fields + (
        index.SearchField('intro'),
    )
    parent_page_types = ['about.TopMenuPage']
    subpage_types = ['about.EventPage']


class EventPage(Page):
    """
    TODO: localize
    """
    date_from = models.DateField("Start date")
    date_to = models.DateField(
        "End date",
        null=True,
        blank=True,
        help_text="Not required if event is on a single day"
    )
    time_from = models.TimeField("Start time", null=True, blank=True)
    time_to = models.TimeField("End time", null=True, blank=True)
    location = models.CharField(max_length=255)
    body = StreamField(FullStreamBlock(), null=True, blank=True)
    signup_link = models.URLField(blank=True, help_text="Link for registration form, if needed")
    feed_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    search_fields = Page.search_fields + (
        index.SearchField('location'),
        index.SearchField('body'),
    )

    @property
    def event_index(self):
        # Find closest ancestor which is an event index
        return self.get_ancestors().type(EventIndexPage).last()

    content_panels = Page.content_panels + [
        FieldPanel('date_from'),
        FieldPanel('date_to'),
        FieldPanel('time_from'),
        FieldPanel('time_to'),
        FieldPanel('location'),
        FieldPanel('signup_link'),
        StreamFieldPanel('body'),
    ]
    promote_panels = Page.promote_panels + [
        ImageChooserPanel('feed_image'),
    ]

    parent_page_types = ['about.EventIndexPage']
    subpage_types = []

