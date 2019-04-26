<nav class="site-nav">
  {% set hasSearch = theme.swiftype_key || theme.algolia_search.enable || theme.tinysou_Key || theme.local_search.enable %}

  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName | replace(' ', '-') }}">
          <a href="{{ url_for(path.split('||')[0]) | trim }}" rel="section">
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-fw fa-{{ path.split('||')[1] | trim | default('question-circle') }}"></i> <br />
            {% endif %}
            {{ __('menu.' + name) | replace('menu.', '') }}
          </a>
        </li>
      {% endfor %}
    </ul>
  {% endif %}
</nav>

<div class="site-brand-wrapper">
 
</div>

{#   这里的样式写在 menu.styl 里的
<div class="site-master" itemprop="author" itemscope itemtype="http://schema.org/Person">
    <img class="site-master-avatar" itemprop="image" src="{{ url_for( theme.avatar | default(theme.images + '/avatar.gif') ) }}" alt="{{ theme.author }}" />
    <h2 class="site-master-description" itemprop="description">
        {{ theme.description }}
    </h2>
</div>
#}
