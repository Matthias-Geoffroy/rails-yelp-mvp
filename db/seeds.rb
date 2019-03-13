# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:    'La Cigale',
    address: 'Nantes',
    category: "french"
  },
  {
    name:    'O Bistrot Quai',
    address: 'Nantes',
    category: "french"
  },
  {
    name:    'Esprit Tchai',
    address: 'Paris',
    category: "chinese"
  },
  {
    name:    'Le 1',
    address: 'Nantes',
    category: "french"
  },
  {
    name:    'Creperie',
    address: 'Nantes',
    category: "french"
  },
  {
    name:    'Italien resto',
    address: 'Paris',
    category: "italian"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
