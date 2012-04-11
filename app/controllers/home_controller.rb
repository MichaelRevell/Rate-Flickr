class HomeController < ApplicationController
  def index
    require 'flickraw'
    
    @rating = Rating.new

    FlickRaw.api_key="424ca2d344deb8f86a06ca73f26c9aa8"
    FlickRaw.shared_secret="0bad88d39b4792c3"

    list   = flickr.photos.search :tags => "cat"
    
    num = Random.rand(11)
    id     = list[num].id
    secret = list[num].secret
    info = flickr.photos.getInfo :photo_id => id, :secret => secret

    puts info.title           # => "PICT986"
    puts info.dates.taken     # => "2006-07-06 15:16:18"
    @imageId = id

    info = flickr.photos.getInfo :photo_id => id

    @cat = FlickRaw.url_m(info)
  end

  def about
  end

  def best
  end

end
