"""
# Models common for different blogs of the site
"""

# TODO: move these models into separate app?

from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.db import models

from taggit.models import TaggedItemBase
from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtaildocs.edit_handlers import DocumentChooserPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel
from wagtail.wagtailadmin.edit_handlers import FieldPanel, \
    InlinePanel, PageChooserPanel, StreamFieldPanel
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailsearch import index

from .streamfield_blocks import FullStreamBlock


class AbstractBlogIndexPage(Page):

    class Meta:
        abstract = True

    intro = RichTextField(blank=True)

    search_fields = Page.search_fields + (
        index.SearchField('intro'),
    )
    content_panels = [
        FieldPanel('title', classname="full title"),
        FieldPanel('intro', classname="full"),
    ]

    subpage_types = ['home.UniversalBlogPage']

    @property
    def posts(self):
        # Get list of live blog pages that are descendants of this page
        posts = UniversalBlogPage.objects.live().descendant_of(self)
        # Order by most recent date first
        posts = posts.order_by('-date')
        return posts

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


class UniversalBlogPageRelatedLink(Orderable, models.Model):
    """
    Common model needed for "pages related links" feature,
    which is accessible when editing a UniversalBlogPage.
    """
    title = models.CharField(max_length=255, help_text="Link title")
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
    page = ParentalKey('home.UniversalBlogPage', related_name='related_links')

    @property
    def link(self):
        if self.link_page:
            return self.link_page.url
        elif self.link_document:
            return self.link_document.url
        else:
            return self.link_external

    panels = [
        FieldPanel('title'),
        FieldPanel('link_external'),
        PageChooserPanel('link_page'),
        DocumentChooserPanel('link_document'),
    ]


class UniversalBlogPagesTag(TaggedItemBase):
    content_object = ParentalKey('home.UniversalBlogPage', related_name='tagged_items')


class UniversalBlogPage(Page):
    """
    Blog page model used for different blog index models.
    i.e. instance of this model may become child of any blog index.
    """
    """
    TOOO: limit parent pages types to blogs only ?
    Not possible for AbstractBlogIndexPage
    Conflict with future blogs
    """

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

    tags = ClusterTaggableManager(through=UniversalBlogPagesTag, blank=True)

    @property
    def blog_index(self):
        # Find closest ancestor which is a blog index
        return self.get_ancestors().type(AbstractBlogIndexPage).last()

    def get_template(self, request):
        return "home/abstract_blog_page.html"

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


class UniversalBlogIndexPage(AbstractBlogIndexPage):
    """
    Used by moderators to add new blogs to the site.
    """

