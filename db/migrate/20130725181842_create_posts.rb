class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
