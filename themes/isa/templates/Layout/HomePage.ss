<style>
.hero {
  border-bottom: 5px solid #ffce39;
  position: relative;
  padding: 2em 0;
  background-color: #FFF;
}


<% if $LatestEvent %>
@media screen and (min-width: 480px) and (max-width: 768px) {
  <% loop $LatestEvent %>

      .hero {
      <% if $MainImage %>
        background: black url({$MainImage.URL}) no-repeat center top;
      <% else %>
        background: black url({$ThemeDir}/images/hero-image-md.jpg) no-repeat center top;
      <% end_if %>
        padding: 4em 0;
      }
    }
    @media screen and (min-width: 768px) {
      .hero {
      <% if $MainImage %>
        background: black url({$MainImage.URL}) no-repeat center top;
      <% else %>
        background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
      <% end_if %>
        padding: 0;
        height: 665px;
      }
    }
  <% end_loop %>
<% else %>

  @media screen and (min-width: 480px) and (max-width: 768px) {
    .hero {
    <% if $BackgroundFeature %>
      background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
    <% else %>
      background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
    <% end_if %>
      padding: 4em 0;
    }
  }
  @media screen and (min-width: 768px) {
    .hero {
    <% if $BackgroundFeature %>
      background: black url({$BackgroundFeature.Image.URL}) no-repeat center top;
    <% else %>
      background: black url({$ThemeDir}/images/hero-image.jpg) no-repeat center top;
    <% end_if %>
      padding: 0;
      height: 665px;
    }
  }
<% end_if %>
</style>
<div class="hero">
        <div class="container clearfix">
          <div class="hero-text">
                <h2 class="blocktext">Welcome to the Indian Student Alliance.</h2>
                <ul>
                    <li><a href="events/">Our Events</a></li>
                    <li><a href="board/">Meet Us</a></li>
                    <li><a href="community">Learn about the Community</a></li>
                </ul>
            </div>
          <% if $LatestEvent %>
            <div class="hero-article-wrapper">
              <div class="hero-article clearfix">
             
             
                <% with $LatestEvent %>
              
                        <h3 class="hero-title">
                            <% if $UseExternalLink %>
                              <a href="$ExternalLink" target="_blank">Coming Up: $Title</a>
                              <% else %>
                                <a href="$Link">Coming Up! $Title</a>
                          <% end_if %>
                         </h3>
                          <p><% loop DateTimes.Limit('4') %>
                            $DateRange<% if StartTime %> $TimeRange<% end_if %>
                          <% end_loop %></p>
                      <div class="hero-content"> $Content.Summary(50)</div>
                        <% if $UseExternalLink %>
                           <a href="$ExternalLink" target="_blank" class="hero-link">Read More</a>
                        <% else %>
                          <a href="$Link" class="hero-link">Read More</a>
                        <% end_if %>
                        
                <% end_with %>           
              
              </div>
           </div>
            <% else_if $HomePageHeroFeatures %>
              <div class="hero-article-wrapper">

                  <% loop $HomePageHeroFeatures %>
                    <div class="hero-article clearfix">
                        <h3 class="hero-title"><a href="$AssociatedPage.Link">$Title</a></h3>
                        <div class="hero-content">$Content</div>
                        <a href="$AssociatedPage.Link" class="hero-link">Read More</a>
                    </div>
                  <% end_loop %>


             </div>
            <% end_if %>
         <% include HomePageHeroText %>
        </div>

    </div>
	<section class="home-highlights">
        <div class="container clearfix">
	        <% loop HomePageFeatures.Limit(3) %>
	            <% include HomePageFeature %>
	         <% end_loop %>
         </div><!-- end .container -->
    </section>

    <% include TopicsAndNews %>
