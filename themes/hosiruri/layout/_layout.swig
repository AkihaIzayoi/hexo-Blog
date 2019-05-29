<!DOCTYPE html>
{% set html_class = 'theme-hosiruri ' + theme.scheme %}
{% if theme.motion.enable %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}
{# Language & Config #}
{% set title = __('title') !== 'title' && __('title') || config.title %}
{% set subtitle = __('subtitle') !== 'subtitle' && __('subtitle') || config.subtitle %}
{% set author = __('author') !== 'author' && __('author') || config.author %}
{% set description = __('description') !== 'description' && __('description') || config.description %}


<html class="{{ html_class | lower }}" lang="{{ config.language }}">
  <head>
    {% include '_partials/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
    {% include '_third-party/analytics/index.swig' %}
    {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
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
            {# include '_third-party/duoshuo-hot-articles.swig' %}
            {% include '_partials/comments.swig' #}
          </div>
          {% if theme.sidebar.display !== 'remove' %}
            {% block sidebar %}{% endblock %}
          {% endif %}
        </div>
      </main>

      <footer></footer>

      {% if not theme.sidebar.b2t %}
      <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>
        {% if theme.sidebar.scrollpercent %}
          <span id="scrollpercent"><span>0</span>%</span>
        {% endif %}
      </div>
    {% endif %}

    <div>
    </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}
  {% include '_scripts/next-boot.swig' %}
  {% include '_scripts/scroll-cookie.swig' %}
  {% include '_scripts/exturl.swig' %}
  </body>
</html>