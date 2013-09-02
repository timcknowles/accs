class RemoveEmailAgain < ActiveRecord::Migration
  def down
    remove_column :users, :email
  end
end
