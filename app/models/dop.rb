class Dop < ActiveRecord::Base
  attr_accessible :analalgesia, :aseptic, :assesser_GMC, :assessor, :assessor_contact, :assessor_email, :assessor_postion, :clinical_encouter, :clinical_setting, :communication, :complexity, :consent, :consideration, :number_previous_assessor, :number_previous_trainee, :overall, :post_procedure, :preparation, :problem_category, :seeks_help, :suggestions, :technical_ability, :time_feedback, :time_observation, :training, :understanding, :item_ids, :item_id
  belongs_to :user
  has_many :items, through: :curriculum_assessments
  has_many :curriculum_assessments
end
