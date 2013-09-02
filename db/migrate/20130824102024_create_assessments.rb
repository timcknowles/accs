class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :assessor_email
      t.string :assessment_type
      t.datetime :date
      t.string :assessor_name
      t.string :assessor_grade
      t.string :assessor_gmc
      t.string :assessment_title
      t.string :assessment_description
      t.string :assessor_firstname
      t.string :assessor_lastname

      t.timestamps
    end
  end
end
