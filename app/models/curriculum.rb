class Curriculum < ActiveRecord::Base
  attr_accessible :name, :year, :section_ids
  has_many :sections
  has_many :items, through: :sections
end
