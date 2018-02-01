<div class="content">
	<% if Content %>
		<div class="typography">$Content</div>
	<% end_if %>
	<% if Poll %>
		$Poll.Controller.PollDetail
	<% else %>
		<p><%t ActivePollPage.NOPOLLS 'There are no polls' %></p>
	<% end_if %>
</div>