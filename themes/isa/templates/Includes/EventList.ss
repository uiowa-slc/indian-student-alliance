<ul>
<% loop Events %>

	<% with Event %><li id = "$URLSegment"class="vevent clearfix" style = "background-image:url($MainImage.URL); background-size: 820px; background-repeat: no-repeat;"><% end_with %>
		  <h3 class="summary ListH"><% if Announcement %>$Title<% else %><a class="url" href="$Link">$Event.Title</a><% end_if %></h3>
		  <div class = "ListE">
		  <p >$DateRange <% if AllDay %><% _t('ALLDAY','All Day') %><% else %><% if StartTime %>$TimeRange<% end_if %><% end_if %></p>
		 
		 <!-- <p ><a href="$ICSLink"><% _t('ADD','Add this to Calendar') %></a></p> -->
		  
		  <% if Announcement %>
		  $Content
		  <% else %>
		  <p><% with Event %>$Content.LimitWordCount(60) <% end_with %> <a href="$Link"><% _t('MORE','Read more&hellip;') %></a></p>
		  <% end_if %>
		  <% if OtherDates %>
		  </div> 
	  <div class="event-calendar-other-dates">
	    <h4><% _t('Calendar.ADDITIONALDATES','Additional Dates for this Event') %>:</h4>
	    <ul>
	      <% loop OtherDates %>
	      <li><a href="$Link" title="$Event.Title">$DateRange <% if StartTime %> $TimeRange<% end_if %></a></li>
	      <% end_loop %>
	    </ul>
	  </div>
	  <% end_if %>
	</li>

<% end_loop %>
</ul>
<% if MoreEvents %>
<a href="$MoreLink" class="calendar-view-more"><% _t('Calendar.VIEWMOREEVENTS','View more events...') %></a>
<% end_if %>
