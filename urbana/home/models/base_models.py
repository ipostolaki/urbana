"""
TODO:
Distinct blogs indexes
Common class for blog page
Common class for blog tags
modify blog inclusion
universal blog index?
restrict adding reserved indexes for user
"""

from __future__ import absolute_import, unicode_literals

from django.db import models
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from taggit.models import TaggedItemBase
from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, MultiFieldPanel, \
    InlinePanel, PageChooserPanel, StreamFieldPanel

from wagtail.wagtaildocs.edit_handlers import DocumentChooserPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel

from wagtail.wagtailsearch import index

from .streamfield_blocks import FullStreamBlock


class HomePage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="full")
    ]

    #  TODO: check that with empty system
    parent_page_types = []  # this page should be not be added to other pages




# ––––––––––––––––––––––––––––––––––––––––––––––––
# Common abstract classes needed for "pages related links" feature

class LinkFields(models.Model):
    link_external = models.URLField("External link", blank=True)
    link_page = models.ForeignKey(
        'wagtailcore.Page',
        null=True,
        blank=True,
        related_name='+'
    )
    link_document = models.ForeignKey(
        'wagtaildocs.Document',
        null=True,
        blank=True,
        related_name='+'
    )

    @property
    def link(self):
        if self.link_page:
            return self.link_page.url
        elif self.link_document:
            return self.link_document.url
        else:
            return self.link_external

    panels = [
        FieldPanel('link_external'),
        PageChooserPanel('link_page'),
        DocumentChooserPanel('link_document'),
    ]

    class Meta:
        abstract = True


class RelatedLink(LinkFields):
    title = models.CharField(max_length=255, help_text="Link title")

    panels = [
        FieldPanel('title'),
        MultiFieldPanel(LinkFields.panels, "Link"),
    ]

    class Meta:
        abstract = True


# ––––––––––––––––––––––––––––––––––––––––––––––––
# Abstract models common for different blogs

class AbstractBlogPage(Page):
    body = StreamField(FullStreamBlock())
    date = models.DateField("Post date")
    feed_image = models.ForeignKey(
        'wagtailimages.Image',
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    search_fields = Page.search_fields + (
        index.SearchField('body'),
    )

    @property
    def blog_index(self):
        # Find closest ancestor which is a blog index
        return self.get_ancestors().type(AbstractBlogIndexPage).last()

    def get_template(self, request):
        return "home/abstract_blog_page.html"

    class Meta:
        abstract = True

    content_panels = [
        FieldPanel('title', classname="full title"),
        FieldPanel('date'),
        StreamFieldPanel('body'),
        InlinePanel('related_links', label="Related links"),
    ]

    promote_panels = Page.promote_panels + [
        ImageChooserPanel('feed_image'),
        FieldPanel('tags'),
    ]


class AbstractBlogIndexPage(Page):
    intro = RichTextField(blank=True)

    search_fields = Page.search_fields + (
        index.SearchField('intro'),
    )

    content_panels = [
        FieldPanel('title', classname="full title"),
        FieldPanel('intro', classname="full"),
        InlinePanel('related_links', label="Related links"),
    ]

    promote_panels = Page.promote_panels

    class Meta:
        abstract = True

    def get_template(self, request):
        return "home/abstract_blog_index_page.html"

    def get_context(self, request):
        # Get posts
        posts = self.posts

        # Filter by tag
        tag = request.GET.get('tag')
        if tag:
            posts = posts.filter(tags__name=tag)

        # Pagination
        page = request.GET.get('page')
        paginator = Paginator(posts, 3)  # Show x posts per page TODO: adjust
        try:
            posts = paginator.page(page)
        except PageNotAnInteger:
            posts = paginator.page(1)
        except EmptyPage:
            posts = paginator.page(paginator.num_pages)

        # Update template context
        context = super().get_context(request)

        context['posts'] = posts
        return context


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


# ––––––––––––––––––––––––––––––––––––––––––––––––
# Blog models for module 'Stiri urbane'

class UrbanBlogPagesTag(TaggedItemBase):
    content_object = ParentalKey('home.UrbanBlogPage', related_name='tagged_items')


class UrbanBlogPage(AbstractBlogPage):
    parent_page_types = ['home.UrbanBlogIndexPage']
    tags = ClusterTaggableManager(through=UrbanBlogPagesTag, blank=True)


class UrbanBlogIndexPage(AbstractBlogIndexPage):

    parent_page_types = ['home.HomePage']
    subpage_types = ['home.UrbanBlogPage']

    # TODO: find a way to abstract this property
    @property
    def posts(self):
        # Get list of live blog pages that are descendants of this page
        posts = UrbanBlogPage.objects.live().descendant_of(self)
        # Order by most recent date first
        posts = posts.order_by('-date')
        return posts


class UrbanBlogPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.UrbanBlogPage', related_name='related_links')


class UrbanBlogIndexPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.UrbanBlogIndexPage', related_name='related_links')


# ––––––––––––––––––––––––––––––––––––––––––––––––
# Models for module About 'Despre RCU'

class AboutIndexPage(Page):
    """
    # Page with a specific template
    # In template there will be css styled text with description of the RCU
    # Also this page should contain generated listing of all sub pages
    """

    parent_page_types = ['home.HomePage']

    description = models.CharField(max_length=800, help_text="RCU descriere")  # TODO localize

    content_panels = Page.content_panels + [
        FieldPanel('description')
    ]

    def get_context(self, request):
        context = super().get_context(request)
        context['sub_pages'] = self.get_children().live()
        return context


class StandardPage(AbstractStreamfieldPage):
    # Universal page which may be added anywhere in the pages tree
    # template – same as for parent class
    pass


# ––––––––––––––––––––––––––––––––––––––––––––––––
# About Network Blog Models


class AboutNetworkNewsIndexPage(AbstractBlogIndexPage):
    """
    Another blog - "Stirile Retelei / network news"
    Index page, visible in menu
    Contains listing of posts
    """

    parent_page_types = ['home.AboutIndexPage']
    subpage_types = ['home.AboutNetworkNewsPage']

    @property
    def posts(self):
        # Get list of live blog pages that are descendants of this page
        posts = AboutNetworkNewsPage.objects.live().descendant_of(self)
        # Order by most recent date first
        posts = posts.order_by('-date')
        return posts


class AboutNetworkNewsPagesTag(TaggedItemBase):
    content_object = ParentalKey('home.AboutNetworkNewsPage', related_name='tagged_items')


class AboutNetworkNewsPage(AbstractBlogPage):
    parent_page_types = ['home.AboutNetworkNewsIndexPage']
    tags = ClusterTaggableManager(through=AboutNetworkNewsPagesTag, blank=True)


class AboutNetworkNewsPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.AboutNetworkNewsPage', related_name='related_links')


class AboutNetworkNewsIndexPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.AboutNetworkNewsIndexPage', related_name='related_links')


# ––––––––––––––––––––––––––––––––––––––––––––––––
# About Initiatives Blog Models


class AboutInitiativesIndexPage(AbstractBlogIndexPage):
    """
    Another blog - network initiatives
    Index page, visible in menu
    Contains listing of posts
    """

    parent_page_types = ['home.AboutIndexPage']
    subpage_types = ['home.AboutInitiativesPage']

    @property
    def posts(self):
        # Get list of live blog pages that are descendants of this page
        posts = AboutInitiativesPage.objects.live().descendant_of(self)
        # Order by most recent date first
        posts = posts.order_by('-date')
        return posts


class AboutInitiativesPagesTag(TaggedItemBase):
    content_object = ParentalKey('home.AboutInitiativesPage', related_name='tagged_items')


class AboutInitiativesPage(AbstractBlogPage):
    tags = ClusterTaggableManager(through=AboutInitiativesPagesTag, blank=True)

    parent_page_types = ['home.AboutInitiativesIndexPage']

    # TODO: localize that
    @classmethod
    def get_verbose_name(cls):
        return "Pagina cu initiativa"


class AboutInitiativesPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.AboutInitiativesPage', related_name='related_links')


class AboutInitiativesIndexPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.AboutInitiativesIndexPage', related_name='related_links')
