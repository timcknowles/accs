class CreateDops < ActiveRecord::Migration
  def change
    create_table :dops do |t|
      t.string :clinical_setting
      t.string :problem_category
      t.string :clinical_encouter
      t.string :complexity
      t.string :assessor_postion
      t.string :number_previous_assessor
      t.string :number_previous_trainee
      t.integer :understanding
      t.integer :consent
      t.integer :preparation
      t.integer :analalgesia
      t.integer :technical_ability
      t.integer :aseptic
      t.integer :seeks_help
      t.integer :post_procedure
      t.integer :communication
      t.integer :consideration
      t.integer :overall
      t.text :suggestions
      t.boolean :training
      t.integer :time_observation
      t.integer :time_feedback
      t.string :assessor
      t.string :assesser_GMC
      t.string :assessor_contact
      t.string :assessor_email

      t.timestamps
    end
  end
end
