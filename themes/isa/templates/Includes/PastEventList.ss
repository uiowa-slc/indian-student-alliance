<ul class="event-list">
	<% loop $Children %>
		
			<li id = "$URLSegment"class="event clearfix" style = "background-image:url($MainImage.URL); background-repeat: no-repeat;">

		<h3><% if $Announcement %>$Title<% else %><a href="$Link">$Title</a><% end_if %></h3>
		<p>$DateRange <% if $StartTime %>$TimeRange<% end_if %></p>
		<p><a href="$Link">Continue reading</a></p>
	</li>
	<% end_loop %>
</ul>
