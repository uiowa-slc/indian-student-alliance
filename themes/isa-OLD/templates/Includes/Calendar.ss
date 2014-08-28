<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="main-content <% if $BackgroundImage %>margin-top<% end_if %>">
			<h2>$DateHeader</h2>
			<% if Events %>
			<div id="event-calendar-events">
			  <% include EventList %>
			</div>
			<% else %>
			  <p><% _t('NOEVENTS','There are no events') %>.</p>
			<% end_if %>
	    </section>
	    <section class="sec-content hide-print">
	    	$Content
	    	<% include SideNav %>
	    </section>
	</div>
</div>
<% include TopicsAndNews %> 

