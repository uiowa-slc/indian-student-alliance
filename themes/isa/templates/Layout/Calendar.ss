<% if $BackgroundImage %>
    	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
    		<div class="img-fifty-top"></div>
    	</div>
    <% else %>
    	<div class="img-container" style="background-image: url(assets/Uploads/rszcabexecphoto.jpg);">
    		<div class="img-fifty-top"></div>
    	</div>
<% end_if %>
<div style="position: relative;" class="news">
    <div class="img-fifty"></div>
    <section class="container content-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="main-content">

       <h2>$Title</h2>
		<p class="feed"><a href="$Link(rss)"><% _t('SUBSCRIBE','Calendar RSS Feed') %></a></p>


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
        	$CalendarWidget
  			$MonthJumper
  			<% include QuickNav %>

        </section>
    </section>
</div>
<% include TopicsAndNews %>
