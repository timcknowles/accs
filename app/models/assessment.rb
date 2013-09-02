class Assessment < ActiveRecord::Base
  attr_accessible :assessment_description, :assessment_title, :assessment_type, :assessor_email, :assessor_firstname, :assessor_gmc, :assessor_grade, :assessor_lastname, :assessor_name, :date
end
