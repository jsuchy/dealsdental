Deface::Override.new(virtual_path: 'spree/shared/_footer',
                     name: 'footer-links',
                     replace: 'div#footer-left p') do
                      "<span>Find us here:</span>
                      <span><a href='https://www.facebook.com/profile.php?id=100004537577705'><%= image_tag('fb-icon.png') %></a></span>
                      <span><a href='https://www.linkedin.com/profile/view?id=376827331'><%= image_tag('link-icon.png') %></a></span>
                      <span><a href='http://www.pinterest.com/dealsdental'><%= image_tag('p-icon.png') %></a></span>"
end
