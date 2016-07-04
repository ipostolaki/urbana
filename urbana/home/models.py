from __future__ import absolute_import, unicode_literals

from django.db import models
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django import forms

from taggit.models import TaggedItemBase
from modelcluster.contrib.taggit import ClusterTaggableManager
from modelcluster.fields import ParentalKey

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailcore.fields import RichTextField, StreamField
from wagtail.wagtailadmin.edit_handlers import FieldPanel, MultiFieldPanel, \
    InlinePanel, PageChooserPanel, StreamFieldPanel

from wagtail.wagtailcore.blocks import TextBlock, StructBlock, StreamBlock, FieldBlock, CharBlock, RichTextBlock
from wagtail.wagtailimages.blocks import ImageChooserBlock
from wagtail.wagtaildocs.blocks import DocumentChooserBlock

from wagtail.wagtaildocs.edit_handlers import DocumentChooserPanel
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel

from wagtail.wagtailsearch import index


class HomePage(Page):
    body = RichTextField(blank=True)

    content_panels = Page.content_panels + [
        FieldPanel('body', classname="full")
    ]


# ––––––––––––––––––––––––––––––––––––––––––––––––
# Global Streamfield definition


class PullQuoteBlock(StructBlock):
    quote = TextBlock("quote title")
    attribution = CharBlock()

    class Meta:
        icon = "openquote"


class ImageFormatChoiceBlock(FieldBlock):
    field = forms.ChoiceField(choices=(
        ('left', 'Wrap left'), ('right', 'Wrap right'), ('mid', 'Mid width'), ('full', 'Full width'),
    ))


class HTMLAlignmentChoiceBlock(FieldBlock):
    field = forms.ChoiceField(choices=(
        ('normal', 'Normal'), ('full', 'Full width'),
    ))


class ImageBlock(StructBlock):
    image = ImageChooserBlock()
    caption = RichTextBlock()
    alignment = ImageFormatChoiceBlock()


class DemoStreamBlock(StreamBlock):
    h2 = CharBlock(icon="title", classname="title")
    h3 = CharBlock(icon="title", classname="title")
    h4 = CharBlock(icon="title", classname="title")
    intro = RichTextBlock(icon="pilcrow")
    paragraph = RichTextBlock(icon="pilcrow")
    aligned_image = ImageBlock(label="Aligned image", icon="image")
    pullquote = PullQuoteBlock()
    document = DocumentChooserBlock(icon="doc-full-inverse")


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
    body = StreamField(DemoStreamBlock())
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

    @property
    def posts(self):
        # Get list of live blog pages that are descendants of this page
        posts = UrbanBlogPage.objects.live().descendant_of(self)

        # Order by most recent date first
        posts = posts.order_by('-date')

        return posts

    def get_context(self, request):
        # Get posts
        posts = self.posts

        # Filter by tag
        tag = request.GET.get('tag')
        if tag:
            posts = posts.filter(tags__name=tag)

        # Pagination
        page = request.GET.get('page')
        paginator = Paginator(posts, 2)  # Show 10 posts per page TODO: change to 2.
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


# ––––––––––––––––––––––––––––––––––––––––––––––––
# Blog models for module 'Stiri urbane'

class UrbanBlogPagesTag(TaggedItemBase):
    content_object = ParentalKey('home.UrbanBlogPage', related_name='tagged_items')


class UrbanBlogPage(AbstractBlogPage):
    tags = ClusterTaggableManager(through=UrbanBlogPagesTag, blank=True)


class UrbanBlogIndexPage(AbstractBlogIndexPage):
    pass


class UrbanBlogPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.UrbanBlogPage', related_name='related_links')


class UrbanBlogIndexPageRelatedLink(Orderable, RelatedLink):
    page = ParentalKey('home.UrbanBlogIndexPage', related_name='related_links')

