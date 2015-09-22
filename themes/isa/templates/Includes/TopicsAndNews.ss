      <section class="topics hide-print">
            <div class="container ">
                <div class="colgroup">
                    <div class="col-2-3 mod">
                        <h3 class="mod-title ">Community Topics</h3>
                          <ul class="grid-justify">
                            <% with Page("community") %>
                              <% loop $BlogPosts.Limit(8) %>
                                <li><a href="$Link">$MenuTitle</a></li>
                                <% end_loop %>
                            <% end_with %>
                          </ul>
                    </div>
                    <div class="col-1-3 mod mod-news" >
   
                    <h3 class="mod-title">ISA on Facebook</h3>
                      <% include FbPageBox %>
                    </div>
                    
                </div>
            </div>
        </section>
