<div class="mod <% if $Image %>photo<% end_if %>">
    <div>
    	<% if $Link %>
			<a href="$Link">
				<% if $ShowHeading %>
		        <h3>$Title</h3>
		        <% end_if %>
		        <% if $Image %>
		        	<img src="$Image.SetWidth(279).URL" alt="$Title - Image">
		        <% end_if %>
	    	</a>
    	<% else %>
			<% if $ShowHeading %>
	        <h3>$Title</h3>
	        <% end_if %>
	        <% if $Image %>
	        	<img src="$Image.URL" alt="$Title - Image">
	        <% end_if %>
    	<% end_if %>
    </div>
    $Content
</div>
