# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating Trail objects..."
1.upto(5) do |n|
  Trail.create!(name: "Trail #{n}",
                description: "Trail description very long #{n}",
                duration: 60 * n,
                distance: 1000 * n,
                local_number: "GR-#{n}-ARC")
end
