class CurriculumAssessment < ActiveRecord::Base
   attr_accessible :title, :body, :item, :dop, :dop_id, :item_id
  belongs_to :dop
  belongs_to :item
end
