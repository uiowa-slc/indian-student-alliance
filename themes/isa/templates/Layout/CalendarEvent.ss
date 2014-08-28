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
            <p class="dates">$DateRange<% if StartTime %> $TimeRange<% end_if %></p>
          <% end_with %>
          $Content
      </section>
      <section class="sec-content hide-print">
        <% include SideNav %>
      </section>
  </div>
</div>
<% include TopicsAndNews %> 
