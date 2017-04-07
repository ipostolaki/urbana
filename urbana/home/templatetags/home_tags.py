from django import template

from home.models import Page, UrbanBlogIndexPage
from about.models import NetworkNewsBlogIndexPage, InitiativesBlogIndexPage

register = template.Library()


@register.assignment_tag(takes_context=True)
def get_site_root(context):
    # NB this returns a core.Page, not the implementation-specific model used
    # so object-comparison to self will return false as objects would differ
    return context['request'].site.root_page


def has_menu_children(page):
    return page.get_children().live().in_menu().exists()


# Retrieves the top menu items - the immediate children of the parent page
# The has_menu_children method is necessary because the bootstrap menu requires
# a dropdown class to be applied to a parent
@register.inclusion_tag('home/tags/top_menu.html', takes_context=True)
def top_menu(context, parent, calling_page=None):
    menuitems = parent.get_children().live().in_menu()
    for menuitem in menuitems:
        menuitem.show_dropdown = has_menu_children(menuitem)
        # We don't directly check if calling_page is None since the template
        # engine can pass an empty string to calling_page
        # if the variable passed as calling_page does not exist.
        menuitem.active = (calling_page.url.startswith(menuitem.url)
                           if calling_page else False)
    return {
        'calling_page': calling_page,
        'menuitems': menuitems,
        # required by the pageurl tag that we want to use within this template
        'request': context['request'],
    }


# Retrieves the children of the top menu items for the drop downs
@register.inclusion_tag('home/tags/top_menu_children.html', takes_context=True)
def top_menu_children(context, parent):
    menuitems_children = parent.get_children()
    menuitems_children = menuitems_children.live().in_menu()
    return {
        'parent': parent,
        'menuitems_children': menuitems_children,
        # required by the pageurl tag that we want to use within this template
        'request': context['request'],
    }


@register.inclusion_tag('home/tags/breadcrumbs.html', takes_context=True)
def breadcrumbs(context):
    self = context.get('self')
    if self is None or self.depth <= 3:
        # When on the home page, displaying breadcrumbs is irrelevant.
        ancestors = ()
    else:
        ancestors = Page.objects.ancestor_of(
            self, inclusive=True).filter(depth__gt=2)
    return {
        'ancestors': ancestors,
        'request': context['request'],
    }


# Urban Blog feed for home page
@register.inclusion_tag(
    'home/tags/blog_listing_inclusion.html',
    takes_context=True
)
def blog_listing_inclusion(context, kind_of_blog, panel_title, count=5):
    """
    This inclusion is needed to render several recent posts from different blogs of the site
    """
    if kind_of_blog == 'urban':
        blog_index_class = UrbanBlogIndexPage
    elif kind_of_blog == 'network':
        blog_index_class = NetworkNewsBlogIndexPage
    elif kind_of_blog == 'initiatives':
        blog_index_class = InitiativesBlogIndexPage

    # Here different blog indexes are used.
    # Their posts are retrieved using AbstractBlogIndexPage posts property

    blog_index = blog_index_class.objects.all().last()
    posts = blog_index.posts

    return {
        'posts': posts[:count].select_related('feed_image'),
        'panel_title': panel_title,
        # required by the pageurl tag that we want to use within this template
        'request': context['request']
    }

# Retrieves all live pages which are children of the calling page
@register.inclusion_tag(
    'home/tags/standard_index_listing.html',
    takes_context=True
)
def standard_index_listing(context, calling_page):
    pages = calling_page.get_children().live()
    return {
        'pages': pages,
        # required by the pageurl tag that we want to use within this template
        'request': context['request'],
    }