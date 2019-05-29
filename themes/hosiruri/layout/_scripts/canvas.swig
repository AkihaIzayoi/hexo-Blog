{% if theme.canvas_ribbon.enable %}
  {% set canvas_ribbon_uri = url_for(theme.vendors._internal + '/canvas-ribbon/canvas-ribbon.js') %}
  {% if theme.vendors.canvas_ribbon %}
    {% set canvas_ribbon_uri = theme.vendors.canvas_ribbon %}
  {% endif %}
  <script id="ribbon" size="{{ theme.canvas_ribbon.size }}" alpha="{{ theme.canvas_ribbon.alpha }}" zIndex="{{theme.canvas_ribbon.zIndex }}" src="{{ canvas_ribbon_uri }}"></script>
{% endif %}