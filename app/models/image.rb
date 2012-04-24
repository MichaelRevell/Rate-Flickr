class Image < ActiveRecord::Base
  has_many :ratings
  attr_accessible :imageId
  
  def self.random
    return Image.find(:first, :offset => rand(Image.all.length))
  end
  
  def average_rating
    if self.ratings == []
      return 0
    end
    total = 0.0
    for i in 0...self.ratings.length
      total += self.ratings[i].rating
    end
    
    return total / self.ratings.length
    
  end
  
  def best
    Image.all.sort{|a,b| b.average_rating <=> a.average_rating}
  end
  
  def pic
    info = flickr.photos.getInfo :photo_id => self.imageId
    pic = FlickRaw.url_m(info)
    
    return pic #"<img src=\"#{pic}\">"
    
  end
end
