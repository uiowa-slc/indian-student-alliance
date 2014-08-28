<% if $BackgroundImage %>
    	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
    		<div class="img-fifty-top"></div>
    	</div>
    <% else %>
    	<div class="img-container" style="background-image: url({$ThemeDir}/images/img-test.jpg);">
    		<div class="img-fifty-top"></div>
    	</div>
    <% end_if %>
<div style="background: #fafafa;position: relative;">
	<div class="img-fifty"></div>
	<section class="container content-wrapper clearfix">
	    <!-- $Breadcrumbs -->
	    <section class="main-content">
		    <article>
				<h1 class="postTitle">$Title</h1>
				<% if TagsCollection %>
					<p class="tags">
						 <% _t('TAGS', 'Tags:') %>
						<% loop TagsCollection %>
							<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
						<% end_loop %>
					</p>
				<% end_if %>

				$Content

		    </article>
		</section>
	    <section class="sec-content">
	    	<%-- include SideNav --%>
	    	<% include BlogSideBar %>
	   </section>
	</section>
</div>

<%-- <% include TopicsAndNews %> --%>



