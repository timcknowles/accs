class Item < ActiveRecord::Base
  attr_accessible :code, :name
  belongs_to :section
  has_many :dops, through: :curriculum_assessments
  has_many :curriculum_assessments
end
