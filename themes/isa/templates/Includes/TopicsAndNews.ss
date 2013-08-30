      <section class="topics-news" padding hide-print">
            <div class="container ">
                <div class="colgroup">
                    <div class="col-1-2 TNmod">
                        <h3 class="mod-title">Community Topics</h3>
                        <ul class>
                          <% with Page("community") %>
                            <% loop $Entries('8') %>
                              <li><a href="$Link">$MenuTitle</a></li>
                              <% end_loop %>
                            <% end_with %>
                            <li><a id = "viewAll" href="$Link">View all Topics</a></li>
                        </ul>
                    </div>
                    <div class="col-1-2 TNmod mod-news">
                      <% with Page(community) %>
              <% if $Entries %>
                    <h3 class="mod-title">Latest News</h3>
                    <ul class="unstyled">
                      <% loop $Entries('3','news') %>
                      <li><a href="$Link">$MenuTitle</a>
                        <% if $Date %><small>$Date.Format('M. j')</small><% end_if %>
                      </li>
                      <% end_loop %>
                      <li><a id = "viewAll" href="$Link">View all News</a></li>

                    </ul>
              <% end_if %>
            <% end_with %>
                    </div>
                    <div class="col-1-4 mod">
                      <% with Page(news) %>
              <% if $Entries('','event') %>
                    <h3 class="mod-title">Upcoming Events</h3>
                    <ul class="unstyled">
                      <% loop $Entries('3','event') %>
                      <li><a href="$Link">$MenuTitle</a></li>
                      <% end_loop %>
                      <li><a href="{$Link}tag/event">View all Events</a></li>
                    </ul>
              <% end_if %>
            <% end_with %>
                    </div>
                </div>
            </div>
        </section>
