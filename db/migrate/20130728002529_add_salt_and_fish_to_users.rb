class AddSaltAndFishToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :salt, :string
  	add_column :users, :fish, :string
  end
end
