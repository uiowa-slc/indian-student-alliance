<% if $LatestEvent %>
<% loop $LatestEvent %>


<% end_loop %>
<% else %>
<div class = "hero">
<% end_if %> 
  <% include Header %>
        <div class="container clearfix">
	        <div class="hero-text">
                <h2 class="blocktext">Welcome to the Indian Student Alliance.</h2>
                <ul>
                    <li><a href="/isa2/about/">Our Events</a></li>
                    <li><a href="/isa2/board/">Meet Us</a></li>
                    <li><a href="/isa2/community">Learn about the Community</a></li>
                </ul>
            </div>
            <% if not $LatestEvent %>
            <div class="hero-article-wrapper">
	            <div class="hero-article clearfix">
	           
	           
	            	<% loop $LatestEvent %>
	            
                        <h3 class="hero-title">
		                        <% if $UseExternalLink %>
			                        <a href="$ExternalLink" target="_blank">Coming Up: $Title</a>
			                        <% else %>
			              	          <a href="$Link">Coming Up: $Title</a>
			                        <% end_if %>
			            </h3>
              	      <div class="hero-content"> $Content.Summary(50)</div>
	              	      <% if $UseExternalLink %>
	               	       <a href="$ExternalLink" target="_blank" class="hero-link">Read More</a>
	                      <% else %>
	                	      <a href="$Link" class="hero-link">Read More</a>
	                      <% end_if %>
	                      
	            	<% end_loop %>           
              
              </div>
           </div>
           <% else_if HomePageHeroFeatures.limit(2) %>
            <div class="hero-article-wrapper">

                <% loop HomePageHeroFeatures %>
	                <div class="hero-article clearfix">
	                    <% if $Image %>
	                        <a href="$AssociatedPage.Link"><img src="$Image.URL" alt=""></a>
	                    <% end_if %>
	                    <h3 class="hero-title"><a href="$AssociatedPage.Link">$Title</a></h3>
	                    <div class="hero-content">$Content</div>
	                    <a href="$AssociatedPage.Link" class="hero-link">Read More</a>
	                </div>
                <% end_loop %>


	         </div>
           <% end_if %>
         </div> 
    </div>
  <section class="home-highlights">
        <div class="container clearfix">
          <% loop HomePageFeatures %>
              <div class="module">
                  <div class="media">
                  <% if $YouTubeEmbed %>
                    $YouTubeEmbed
                  <% else %>
                      <a href="$AssociatedPage.Link">
                         <img src="$Image.CroppedImage(350,197).URL" alt="$Title">
                      </a>
                  <% end_if %>
                  </div>
                  <div class="inner">
                      <h3><a href="$AssociatedPage.Link">$Title</a></h3>
                        $Content
                  </div>
              </div>
           <% end_loop %>
         </div><!-- end .container -->
    </section>

    <% include TopicsAndNews %>
