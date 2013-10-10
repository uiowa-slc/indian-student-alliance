<% if $BackgroundImage %>
    	<div class="img-container $URLSegment" style="background-image: url($BackgroundImage.URL);">
    		<div class="img-fifty-top"></div>
        <% include Header %>
    	</div>
    <% else %>
<% end_if %>
<div style="position: relative;" class="news">
    <div class="img-fifty"></div>
    <section class="container Bcontent-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="main-content">

        <h1>$Title</h1>
          <% with CurrentDate %>
  <p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
  <p><a href="$ICSLink" title="<% _t('CalendarEvent.ADD','Add to Calendar') %>">Add this to Calendar</a></p>
  <% end_with %>
		$Content
        </section>
        <section class="sec-content hide-print">

        </section>
    </section>
</div>
<% include TopicsAndNews %>
