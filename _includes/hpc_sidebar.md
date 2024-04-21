
<div class="floatright">
	<center><h2>Index of all Pages</h2></center>
	{% assign pages = site.pages %}
	{% for page in pages %}
		<a href="{{page.url}}">{{page.title}}</a><br>
	{% endfor %}
</div>
