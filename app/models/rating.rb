class Rating < ActiveRecord::Base
  attr_accessible :imageId, :rating
  
  validates_numericality_of :imageId
  validates_numericality_of :rating
  validates_inclusion_of :rating, :in => 0..10
end
