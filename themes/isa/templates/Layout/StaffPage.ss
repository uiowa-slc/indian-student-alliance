<div style="position: relative;" class="news">
    <div class="img-fifty"></div>
      <section class=" vevent container content-wrapper clearfix">
            <!-- $Breadcrumbs -->
            <section class="sInnerBground main-content ">

            	<h1>$Title</h1>

            	<% if $Photo %>
            		<img src="$Photo.CroppedImage(765,512).URL" alt="$FirstName $LastName">
            	<% end_if %>
            	
            	$Content

            </section>
            <section class="sec-content">
            	<% include SideNav %>
            </section>
      </section>
</div>
<%-- <% include TopicsAndNews %> --%>
