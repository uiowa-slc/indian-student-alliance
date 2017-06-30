<div class="gradient">
<div class="container clearfix">
      <div class="white-cover"></div>
      <section class="staff-content main-content">
            <h1>$Title</h1>
            $Breadcrumbs
      	$Form
      	$Content

            <ul class="staff-list">
            <% loop $Children %>
                  <% include StaffPageListItem %>
            <% end_loop %>
                  <li class="filler"></li>
                  <li class="filler"></li>
            </ul>

      	
      </section>
          <section class="sec-content hide-print">
            <% include SideNav %>
          </section>
      </div>
</div>
<% include TopicsAndNews %>
