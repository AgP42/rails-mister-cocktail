require "open-uri"
require "json"

require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


##########################
puts 'Cleaning database Ingredient...'
Ingredient.destroy_all

puts 'Creating ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_list = open(url).read
ingredient_list_parsed = JSON.parse(ingredient_list)

ingredient_list_parsed["drinks"].each do |e|
  puts e["strIngredient1"]
  Ingredient.create(name: e["strIngredient1"])
end

puts 'Finished database Ingredient!'

puts 'Cleaning database Cocktail...'
Cocktail.destroy_all

# TODO: Write a seed to insert 100 posts in the database
puts 'Creating 10 fake cocktails...'
10.times do
  puts "#{Faker::Music::RockBand.name}"
  Cocktail.create(name: Faker::Music::RockBand.name)
end
puts 'Finished database Cocktail!'
