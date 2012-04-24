class AddIdToRatings < ActiveRecord::Migration
   def up
     add_column :ratings, :image_id, :integer
   end

   def down
     remove_column :ratings, :image_id
   end
end
