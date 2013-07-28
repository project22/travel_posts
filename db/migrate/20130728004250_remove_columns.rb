class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :users, :remember_token
  end
end
