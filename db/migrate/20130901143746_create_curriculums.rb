class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.datetime :year
      t.string :name

      t.timestamps
    end
  end
end
