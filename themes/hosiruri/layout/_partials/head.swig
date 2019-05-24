<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>


<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link href="/css/main.css?v={{ theme.version }}" rel="stylesheet" type="text/css" />


{% set font_awesome_uri = url_for(theme.vendors._internal + '/font-awesome/css/font-awesome.min.css?v=4.7.0') %}
{% if theme.vendors.fontawesome %}
  {% set font_awesome_uri = theme.vendors.fontawesome %}
{% endif %}
<link href="{{ font_awesome_uri }}" rel="stylesheet" type="text/css" />


{# Export some HEXO Configurations to Front-End #}
<script type="text/javascript" id="hexo.configurations">
  var NexT = window.NexT || {};
  var CONFIG = {
    root: '{{ theme.root }}',
    scheme: '{{ theme.scheme }}',
    version: '{{ theme.version }}',
    sidebar: {{ theme.sidebar | json_encode }},
    fancybox: {{ theme.fancybox }},
    tabs: {{ theme.tabs.enable }},
    motion: {{ theme.motion | json_encode }},
    since: '{{ theme.footer.since }}',
    onlineAPI: '{{ theme.online_api }}',
    site: {
      title: '{{ theme.title }}',
      subtitle: '{{ theme.subtitle }}',
      author: '{{ theme.author }}'
    },
    duoshuo: {
      userId: '{{ theme.duoshuo_info.user_id | default() }}',
      author: '{{ theme.duoshuo_info.admin_nickname | default(__('author'))}}'
    },
    algolia: {
      applicationID: '{{ theme.algolia.applicationID }}',
      apiKey: '{{ theme.algolia.apiKey }}',
      indexName: '{{ theme.algolia.indexName }}',
      hits: {{ theme.algolia_search.hits | json_encode }},
      labels: {{ theme.algolia_search.labels | json_encode }}
    },
    leancloud: {
      enable: {{theme.leancloud_visitors.enable}},
      appID: '{{theme.leancloud_visitors.app_id}}',
      appKey: '{{theme.leancloud_visitors.app_key}}'
    },
    favicon: {
      visibilitychange: {{theme.favicon.visibilitychange}},
      narmal: '{{theme.favicon.narmal}}',
      hidden: '{{theme.favicon.hidden}}',
      show_text: '{{theme.favicon.show_text}}',
      hide_text: '{{theme.favicon.hide_text}}'
    }
  };
</script>

{% set js_vendors = {} %}
{% set js_vendors.jquery      = 'jquery/index.js?v=2.1.3' %}
{% for name, internal in js_vendors %}
  {% set internal_script = url_for(theme.vendors._internal) + '/' + internal %}
    <script type="text/javascript" src="{{ theme.vendors[name] | default(internal_script) }}"></script>
{% endfor %}

{# Canonical, good for google search engine (SEO) : https://support.google.com/webmasters/answer/139066 #}
{% if theme.canonical %}
  <link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>
{% endif %}
