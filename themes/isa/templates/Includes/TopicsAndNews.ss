      <section class="topics-news padding hide-print">
            <div class="container ">
                <div class="colgroup">
                    <div class="col-1-2 TNmod mod-news">
                        <h3 class="mod-title ">Community Topics</h3>
                        <ul>
                          <% with Page(community) %>
                            <% loop $Entries('8', 'community') %>
                              <li><h4><a href="$Link">$MenuTitle</a></h4>
                              </li>
                              <% end_loop %>
                            <% end_with %>
                            <li class = " viewTN"><a id = "viewAll" href="$Link">View all Topics</a></li>
                        </ul>
                    </div>
                    <div class="col-1-2 TNmod mod-news">
   
                    <h3 class="mod-title">ISA on Facebook</h3>
                      <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FIowa-Indian-Student-Alliance-ISA%2F166269351575&amp;width=400&amp;height=395&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=127918570561161" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:395px;" allowTransparency="true"></iframe>
     
                    </div>
                    
                </div>
            </div>
        </section>
