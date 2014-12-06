require 'flickraw'
class FlickrImage < Liquid::Tag

  def initialize(tag_name, markup, tokens)
     super
     @markup = markup
     @id   = markup.split(' ')[0]
     @size = markup.split(' ')[1]
  end

  def render(context)

    FlickRaw.api_key        = ENV["FLICKR_KEY"] || Jekyll.configuration({})['flickr']['api_key']
    FlickRaw.shared_secret  = ENV["FLICKR_SECRET"] || Jekyll.configuration({})['flickr']['shared_secret']
    flickr.access_token    = ENV['FLICKR_ACCESS_TOKEN'] || Jekyll.configuration({})['flickr']['access_token']
    flickr.access_secret   = ENV['FLICKR_ACCESS_SECRET'] || Jekyll.configuration({})['flickr']['access_secret']


    info = flickr.photos.getInfo(:photo_id => @id)

    server        = info['server']
    farm          = info['farm']
    id            = info['id']
    secret        = info['secret']
    title         = info['title']
    description   = info['description']
    size          = "_#{@size}" if @size
    src           = "http://farm#{farm}.static.flickr.com/#{server}/#{id}_#{secret}#{size}.jpg"
    page_url      = info['urls'][0]["_content"]
    img_tag       = "<img src='#{src}' title='#{title}'/>"
    link_tag      = "<a href='#{page_url}'>#{img_tag}</a>"

  end
end

Liquid::Template.register_tag('flickr_image', FlickrImage)

=begin
s small square 75x75
q large square 150x150
t thumbnail, 100 on longest side
m small, 240 on longest side
n small, 320 on longest side
- medium, 500 on longest side
z medium 640, 640 on longest side
c medium 800, 800 on longest side†
b large, 1024 on longest side*
h large 1600, 1600 on longest side†
k large 2048, 2048 on longest side†
o original image, either a jpg, gif or png, depending on source format
* Before May 25th 2010 large photos only exist for very large original images.

† Medium 800, large 1600, and large 2048 photos only exist after March 1st 2012.

=end