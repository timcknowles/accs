class Section < ActiveRecord::Base
  attr_accessible :title, :item_ids
  belongs_to :curriculum
  has_many :items
end
