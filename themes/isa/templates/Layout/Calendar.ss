<div style="position: relative;" class="news">
    <section class="container content-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="calendar-main-content">
		$Content
		<% if Events %>
		<h2>Upcoming Scheduled Events</h2>
		<div id="event-calendar-events">
		  <% include EventList %>
		</div>
		<h2>All Annual Events</h2>
		<ul>
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
