<!DOCTYPE html>
{% set html_class = 'theme-hosiruri ' + theme.scheme %}
{% if theme.motion.enable %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
  <head>
    {% include '_partials/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
  </head>
  <body>
    {% set container_class = "container " %}
    {% if theme.sidebar.position %}
      {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
    {% endif %}

    <div class="{{ container_class }} {% block page_class %}{% endblock %}">
      <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
      </header>
      <main id="main" class="main">
        <div class="main-inner">
          <div class="content-wrap">
            <div id="content" class="content">
              {% block content %}{% endblock %}
            </div>
            {% include '_third-party/duoshuo-hot-articles.swig' %}
            {% include '_partials/comments.swig' %}
          </div>
          {% if theme.sidebar.display !== 'remove' %}
            {% block sidebar %}{% endblock %}
          {% endif %}
        </div>
      </main>
    <div>
    </div>
  </body>
</html>