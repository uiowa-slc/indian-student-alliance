<div style="position: relative;" class="news">
    <div class="img-fifty"></div>
      <section class="container Bcontent-wrapper clearfix">
            <!-- $Breadcrumbs -->
            <section class="xmain-content">

            	

            	<% if $Photo %>
            	<div class = "staffImg">
            		<img src="$Photo.CroppedImage(350,334).URL" alt="$FirstName $LastName">
            	</div>
            	<% end_if %>
            	<div class = "staffInfo">
            	<h1>$Title</h1>
            		$Content
            		<a href="mailto:$Email">Email Me</a>
            	</div>
            </section>
            <section class="sec-content">
            	<% include SideNav %>
            </section>
      </section>
</div>
<% include TopicsAndNews %> 