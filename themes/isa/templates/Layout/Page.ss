<!-- <div class="main-bg"></div> -->
    <% if $BackgroundImage %>
    	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
    		<div class="img-fifty-top"></div>
    	</div>
    <% else %>
    	<div class="img-container" style="background-image: url(assets/Uploads/rszcabexecphoto.jpg);">
    		<div class="img-fifty-top"></div>
    	</div>
    <% end_if %>
    <div style= "position: relative;">
    	<div class="img-fifty"></div>
		<section class="container content-wrapper clearfix">
		    
		    <section class="main-content">
		    <section class = "innerBackground mevent">
				<!-- $Breadcrumbs -->
		    	$Form
		    	$Content
		    </section>	
		    </section>
		
		    <section class="sec-content hide-print">
		    	<% include SideNav %>
		    </section>
		   
		</section>
	</div>
<%-- <% include TopicsAndNews %> --%>

