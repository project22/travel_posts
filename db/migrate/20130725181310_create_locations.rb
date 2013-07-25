class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.integer :user_id


      t.timestamps
    end
  end
end
