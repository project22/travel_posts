class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :users, :remember_token
    remove_column :users, :salt
    remove_column :users, :fish


  end
end
