class Rating < ActiveRecord::Base
  
  belongs_to :image
  
  attr_accessible :imageId, :rating, :image_id
  
  validates_numericality_of :image_id
  validates_numericality_of :rating
  validates_inclusion_of :rating, :in => 0..10
  
end
