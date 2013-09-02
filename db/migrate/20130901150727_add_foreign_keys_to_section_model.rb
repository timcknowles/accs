class AddForeignKeysToSectionModel < ActiveRecord::Migration
  def change
    add_column :sections, :curriculum_id, :integer
    add_column :sections , :item_id, :integer

  end
end
