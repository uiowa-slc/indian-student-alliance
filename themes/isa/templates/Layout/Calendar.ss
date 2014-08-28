<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
		$Content
		<% if Events %>
		<h2>Upcoming Scheduled Events</h2>
		<div id="event-calendar-events">
		  <% include EventList %>
		</div>
		<hr />
		<% else %>
		  
		<% end_if %>
	    </section>
	    <section class="sec-content hide-print">
	    	<h3 class="section-title">All Annual Events</h3>
			<ul class="all-events">
			<% loop Children %>
				<li><a href="$Link">$Title</a></li>
			<% end_loop %>
			</ul>
	    </section>
	</div>
</div>
<% include TopicsAndNews %>
