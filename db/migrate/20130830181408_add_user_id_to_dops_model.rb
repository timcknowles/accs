class AddUserIdToDopsModel < ActiveRecord::Migration
  def change
    add_column :dops, :user_id, :integer

  end
end
