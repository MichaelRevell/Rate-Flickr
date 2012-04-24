class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imageId

      t.timestamps
    end
  end
end
