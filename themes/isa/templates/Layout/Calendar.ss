<% if $BackgroundImage %>
    	<div class="img-container $URLSegment" style="background-image: url($BackgroundImage.URL);">
    		<% include Header %>
    		<div class="img-fifty-top"></div>
    	</div>
    <% else %>
<% end_if %>
<div style="position: relative;" class="news">
    <section class="container content-wrapper calendar clearfix">
        <!-- $Breadcrumbs -->
        <section class="calendar-main-content main-content">
		$Content
		<% if Events %>
		<h1>Upcoming Scheduled Events</h1>
		<div id="event-calendar-events">
		  <% include EventList %>
		</div>
		<h2>All Annual Events</h2>
		<ul class = "allEvents">
		<% loop Children %>
			<li><a href="$Link">$Title</a></li>
		<% end_loop %>
		</ul>
		<% else %>
		  <p><% _t('NOEVENTS','There are no events') %>.</p>
		<% end_if %>
        </section>
    </section>
</div>
<% include TopicsAndNews %>
