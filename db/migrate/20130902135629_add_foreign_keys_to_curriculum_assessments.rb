class AddForeignKeysToCurriculumAssessments < ActiveRecord::Migration
  def change
    add_column :curriculum_assessments, :dop_id, :integer
    add_column :curriculum_assessments , :item_id, :integer
  end
end
