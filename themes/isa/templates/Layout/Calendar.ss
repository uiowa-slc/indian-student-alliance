<div style="position: relative;" class="news">
    <section class="container content-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="calendar-main-content">
		$Content
		<% if Events %>
		<div id="event-calendar-events">
		  <% include EventList %>
		</div>
		<% else %>
		  <p><% _t('NOEVENTS','There are no events') %>.</p>
		<% end_if %>
        </section>
        <section class="sec-content hide-print">

        </section>
    </section>
</div>
<% include TopicsAndNews %>
