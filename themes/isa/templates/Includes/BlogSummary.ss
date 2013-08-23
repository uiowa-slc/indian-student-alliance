
<div class="blogSummary">
	<h3 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h3>

	<% if BlogHolder.ShowFullEntry %>
		$Content
	<% else %> 
		<% if $Date %><p class="authorDate"><% _t('POSTEDON', 'Posted on') %> $Date.Format( 'F j, Y') </p><% end_if %>
		<p>$Content.Summary(50) <a href="$Link">Read Full Post</a></p>
	<% end_if %>

	

	<!-- <% if TagsCollection %>
		<p class="tags-summary">
			Tags:
			<% loop TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
			<% end_loop %>
		</p>
	<% end_if %> -->

</div>
<hr>
