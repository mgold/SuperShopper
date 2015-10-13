# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Rails.env.production?
  %w(Milk Eggs Bread Cheese Tomato Onion Mushrooms Avocado Pumpkin).each do |name|
    Item.create!(name: name)
  end
end
