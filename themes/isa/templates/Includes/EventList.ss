<div class="event-list">
	<% loop $Events %>
		<a id="$Event.URLSegment" href="$Event.Link" style="background-image:url($Event.MainImage.URL); background-size: 100%; background-repeat: no-repeat;">
			<span class="event-title"><h3><% if $Announcement %>$Title<% else %>$Event.Title<% end_if %></h3></span>

			<span class="event-dates">$DateRange <% if AllDay %>All Day<% else_if StartTime %>$TimeRange<% end_if %></span>
		</a>
	<% end_loop %>
</div>