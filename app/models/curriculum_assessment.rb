class CurriculumAssessment < ActiveRecord::Base
   attr_accessible :title, :body, :item, :dop
  belongs_to :dop
  belongs_to :item
end
