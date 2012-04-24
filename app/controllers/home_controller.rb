class HomeController < ApplicationController
  def index
    require 'flickraw'
    
    @rating = Rating.new

    @image = Image.random
    @imageId = @image.imageId
    @image_id = @image.id
    #@pic = get_pic(@image.imageId)
    
    FlickRaw.api_key="424ca2d344deb8f86a06ca73f26c9aa8"
    FlickRaw.shared_secret="0bad88d39b4792c3"
      info = flickr.photos.getInfo :photo_id => id
      @pic = FlickRaw.url_m(info)
    
  end

  def about
  end

  def best
    #@best = Image.best
    @best = Image.all.sort{|a,b| b.average_rating <=> a.average_rating}
  end

end
