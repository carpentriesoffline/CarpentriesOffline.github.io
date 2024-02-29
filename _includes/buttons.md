<div class="buttons">
  {% for item in site.data.navigation %}
    <a href="{{ site.baseurl }}{{ item.link }}"
		{% if item.link=="/" %}class="btn btn-light"
		{% elsif page.url==item.link %}class="btn btn-secondary"
		{% else %}class="btn btn-primary"
		{% endif %}>{{ item.name }}</a>
  {% endfor %}
<br>

</div>
