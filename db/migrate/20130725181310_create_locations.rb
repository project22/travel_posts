class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :tag
      t.boolean :is_private
      t.references :user
    
      t.timestamps
    end
  end
end
