
	<div class="faces">
	<% with BlogPage %>
		<a href="$Link">
		    <h3>$Title</h3>
		    <% if $Image %>
		    	<img src="$Image.SetWidth(279).URL" alt="$Title - Image">
		    <% end_if %>
		</a>
	<% end_with %>
	</div>
	
	<p>$SidebarContent</p>
</div>
