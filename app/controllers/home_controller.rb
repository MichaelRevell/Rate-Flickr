class HomeController < ApplicationController
  def index
    require 'flickraw'
    
    @rating = Rating.new

    @image = Image.random
    @imageId = @image.imageId
    @image_id = @image.id
    @pic = get_pic(@image.imageId)
    
  end

  def about
  end

  def best
    #@best = Image.best
    @best = Image.all.sort{|a,b| b.average_rating <=> a.average_rating}
  end

end
