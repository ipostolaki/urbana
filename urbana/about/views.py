import json

from django.http import HttpResponse

from . import models


def get_calendar_data(request):
    """
    Converts events pages data into json format required for rendering by fullcalendar.js
    """
    # start & end values are passed by fullcalendar via AJAX request
    start = request.GET.get('start')
    end = request.GET.get('end')
    retrieved_events = models.get_events_in_range(start, end)

    events_data = []
    for event in retrieved_events:
        event_dict = {
            "title": event.title,
            "start": event.date_from.isoformat(),
            "end": (event.date_to.isoformat() if event.date_to else None),
            "url": event.relative_url(request.site)  # wagtail's page url retrieving method
        }
        events_data.append(event_dict)

    return HttpResponse(json.dumps(events_data), content_type='application/json')
