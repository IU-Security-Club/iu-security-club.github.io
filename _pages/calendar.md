---
permalink: /calendar
layout: content
simple: true
redirect_from:
    - /cal
    - /events
---
<div class="alert alert-info"><strong>Pro Tip:</strong> You can subscribe to our events using <a href="{{ site.calendar.subscribe }}" target="_blank">this link</a>.</div>
<div style="filter: invert(100%) hue-rotate(40deg) saturate(100%);">
  <div class="row justify-content-md-center">
    <div class="col-lg-12 text-center tcc">
      <iframe src="{{ site.calendar.embed }}" style="border-width:0; width: 100%;" width="800" height="640" frameborder="0" scrolling="no"></iframe>
    </div>
  </div>
</div>