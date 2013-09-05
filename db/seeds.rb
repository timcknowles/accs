# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all
File.open("#{Rails.root}/lib/data/curriculum_subl_no_header.txt") do |items|
  items.read.each_line do |item|
    code, name = item.split(" ",2)
    Item.create!(:code => code, :name => name)
  end
end