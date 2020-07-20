require "pry"
require_relative "./dessert.rb"
require_relative "./ingredients.rb"
require_relative "./IngredientsDessert.rb"
require_relative "./bakery.rb"

pain_quotidien = Bakery.new("Pain Quotidien")

flour = Ingredient.new("Flour", muffin)
sugar = Ingredient.new("Sugar", ice_cream)

ice_cream = Dessert.new("Ice Cream", pain_quotidien, sugar)
muffin = Dessert.new("Muffin", pain_quotidien, flour)
croissant = Dessert.new("Croissant", pain_quotidien, sugar)




#puts pain_quotidien.name
print IngredientsDessert.all

#puts ice_cream.bakery