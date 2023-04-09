<div class="buttons">
  {% for item in site.data.navigation %}
    <button onclick="window.location.href='{{ site.baseurl }}{{ item.link }}'" 
		{% if item.link=="/" %}class="button button_white"
		{% elsif page.url==item.link %}class="button button_red"
		{% else %}class="button button_blue"
		{% endif %}>{{ item.name }}</button>
  {% endfor %}
<br>

</div>
