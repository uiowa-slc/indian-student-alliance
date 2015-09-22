<ul class="event-list">
	<% loop $Events %>
		<% with $Event %>
			<li id = "$URLSegment"class="event clearfix" style = "background-image:url($MainImage.URL); background-repeat: no-repeat;">
		<% end_with %>
		<a href="$Link">
		<h3>$Title</h3>
		<p>$DateRange <% if $StartTime %>$TimeRange<% end_if %></p>
		<p>Continue reading</p>
		</a>
	</li>
	<% end_loop %>
</ul>
