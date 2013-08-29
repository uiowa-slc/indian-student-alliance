<% if $BackgroundImage %>
    	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
    		<div class = "title">
    			<h2>$Title</h2>
    		</div>
    		<div class="img-fifty-top"></div>
    	</div>
    <% else %>
    	<div class="img-container" style="background-image: url(assets/Uploads/rszcabexecphoto.jpg);">
    		<div class="img-fifty-top"></div>
    	</div>
<% end_if %>
<div style="position: relative;" class="news">
    <div class="img-fifty"></div>
    <section class="container Bcontent-wrapper clearfix">
        <!-- $Breadcrumbs -->
        <section class="main-content">

		<p class="feed"><a href="$Link(rss)"><% _t('SUBSCRIBE','Calendar RSS Feed') %></a></p>


		$Content
        </section>
        <section class="sec-content hide-print">
        	$CalendarWidget
  			$MonthJumper
  			<% include QuickNav %>

        </section>
    </section>
</div>
<% include TopicsAndNews %>
