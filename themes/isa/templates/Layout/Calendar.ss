<div class="container clearfix">
<div class ="eList">
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
</div>
<div class="event-calendar-controls">
  $CalendarWidget
  $MonthJumper
  <% include QuickNav %>
</div>


</div>