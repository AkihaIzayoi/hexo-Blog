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