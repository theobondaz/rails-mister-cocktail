# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktail_ingredient = open(url).read
ingredients = JSON.parse(cocktail_ingredient)
ingredients["drinks"].each do |ingredient|
  ing = ingredient["strIngredient1"]
Ingredient.create(name: "#{ing}")
end


Cocktail.create(name: "Mojito")

# puts "#{ingredient['name']} - #{user['bio']}"
