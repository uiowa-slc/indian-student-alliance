
<div class="container clearfix">
<div class = "event">
$CalendarWidget
<p><a href="$Parent.Link">&laquo; Back to $Parent.Title</a></p>
<div class="vevent">
  
  <h1 class="summary">$Title</h1>

  <% with CurrentDate %>
  <p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
  <p><a href="$ICSLink" title="<% _t('CalendarEvent.ADD','Add to Calendar') %>">Add this to Calendar</a></p>
  <% end_with %>


  $BackgroundImage
 
  $Content
  asdfasdd
  <% if OtherDates %>
  <div class="event-calendar-other-dates">
    <h4><% _t('CalendarEvent.ADDITIONALDATES','Additional Dates for this Event') %></h4>
    <ul>
      <% loop OtherDates %>
      <li><a href="$Link" title="$Event.Title">$DateRange<% if StartTime %> $TimeRange<% end_if %></a></li>
      <% end_loop %> 
    </ul>
  </div> 
  <% end_if %>
</div>
</div>
$Form
$PageComments
</div>
