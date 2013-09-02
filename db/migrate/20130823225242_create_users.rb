class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.string :current_post
      t.string :educational_supervisor
      t.string :clinical_supervisor

      t.timestamps
    end
  end
end
