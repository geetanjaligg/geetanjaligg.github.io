---
layout: post
title:  'Gobi'
date:   2014-12-03
categories: blog cook food
---



You'll find this post in your `_posts` directory - edit this post and re-build (or run with the `-w` switch) to see your changes!
To add new posts, simply add a file in the `_posts` directory that follows the convention: YYYY-MM-DD-name-of-post.ext.

Jekyll also offers powerful support for code snippets:



{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

<div class="photoset-grid-custom" style="visibility: hidden;"> <!-- can increase the width and decrease left margin to show big grid. full screen grid -->
  <img src="http://stylehatch.github.io/photoset-grid/img/demo/print1-500px.jpg" data-highres="http://stylehatch.github.io/photoset-grid/img/demo/print1-highres.jpg">
  <img src="http://stylehatch.github.io/photoset-grid/img/demo/print2-500px.jpg" data-highres="http://stylehatch.github.io/photoset-grid/img/demo/print2-highres.jpg">
  <img src="http://stylehatch.github.io/photoset-grid/img/demo/print3-500px.jpg" data-highres="http://stylehatch.github.io/photoset-grid/img/demo/print3-highres.jpg">
</div>

<div class="photoset-grid-custom" style="visibility: hidden;">
  {% flickr_image 15930493695 b %}
  {% flickr_image 15930493695 b %}
  {% flickr_image 15930493695 b %}
</div>



<div class="photoset-grid-basic" data-layout="12">
  <img src="/images/DSC_0123.JPG" width="1280" height="960" data-highres="/images/DSC_0123.JPG">
  <img src="/images/DSC_0123.JPG" width="500" height="375" data-highres="/images/DSC_0123.JPG">
  <img src="/images/DSC_0123.JPG" width="500" height="375" data-highres="/images/DSC_0123.JPG">
</div>

<div class="photoset-grid" data-layout="121">
     {% flickr_image 15930493695 b %}
  {% flickr_image 15930493695 b %}
   {% flickr_image 15930493695 b %}
  {% flickr_image 15930493695 b %}
</div>

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh].
<!-- large-img full screen size
img style - width: 152%;
			max-width: inherit;
			margin-left: -26%;
article style - max-width: 700px;
				width: 80%;
			-->
<img class ="large-img" src="/images/DSC_0123.JPG" >

<div class="photoset-grid" data-layout="121">
    <img src="/images/DSC_0123.JPG">
    <img src="/images/DSC_0123.JPG">
    <img src="/images/DSC_0123.JPG">
   <img src="/images/DSC_0123.JPG">
</div>

[jekyll-gh]: https://github.com/mojombo/jekyll
[jekyll]:    http://jekyllrb.com
