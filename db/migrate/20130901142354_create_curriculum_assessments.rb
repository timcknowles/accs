class CreateCurriculumAssessments < ActiveRecord::Migration
  def change
    create_table :curriculum_assessments do |t|

      t.timestamps
    end
  end
end
