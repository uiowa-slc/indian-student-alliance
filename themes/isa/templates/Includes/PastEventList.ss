<ul class="event-list">
	<% loop $Children %>
		
			<li id = "$URLSegment"class="event clearfix text-center" style = "background-image:url($MainImage.URL); background-repeat: no-repeat;">
				<a href="$Link">
		<h3>$Title</h3>
		<p>$DateRange <% if $StartTime %>$TimeRange<% end_if %></p>
		</a>
	</li>
	<% end_loop %>
</ul>
