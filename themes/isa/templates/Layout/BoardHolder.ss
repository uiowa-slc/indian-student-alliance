<div class="gradient">
<div class="container clearfix">
      <div class="white-cover"></div>
      <section class="staff-content main-content">
            <h1>$Title</h1>
            $Breadcrumbs
      	$Form
      	$Content
            <% if $CurrentBoard %>
            <h2>$CurrentBoard.Title</h2>
                  <% with CurrentBoard %>
                        <ul class="staff-list">
                              <% loop $Children %>
                                    <% include StaffPageListItem %>
                              <% end_loop %>
                              <li class="filler"></li>
                              <li class="filler"></li>
                        </ul>
                  <% end_with %>
            <% end_if %>
      	
      </section>
          <section class="sec-content hide-print">
            <% include SideNav %>
          </section>
      </div>
</div>
<% include TopicsAndNews %>
