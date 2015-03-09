<% if $BackgroundImage %>
  <div class="img-container" style="background-image: url($BackgroundImage.URL);">
    <div class="img-fifty-top"></div>
  </div>
<% end_if %>
<div class="gradient">
  <div class="container clearfix">
    <div class="white-cover"></div>
      <section class="main-content event <% if $BackgroundImage %>margin-top<% end_if %>">
        $Breadcrumbs
        <h1>$Title</h1>
          <% with CurrentDate %>
            <p class="dates">Date:  $StartDate.Format("l, F j, Y")
              <% if StartTime %><br>Time: $TimeRange<% end_if %>             
          <% end_with %>
           <% if EventLocation %><br>Location: $EventLocation<% end_if %></p>
          $Content
      </section>
      <section class="sec-content hide-print">
        <% include SideNav %>
      </section>
  </div>
</div>
<% include TopicsAndNews %> 
