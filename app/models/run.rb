require "pry"
require_relative "./dessert.rb"
require_relative "./ingredients.rb"
require_relative "./IngredientsDessert.rb"
require_relative "./bakery.rb"

pain_quotidien = Bakery.new("Pain Quotidien")
starbucks=Bakery.new("starbucks")

flour = Ingredient.new("Flour", 10)
sugar = Ingredient.new("Sugar", 20)
butter = Ingredient.new("butter", 15)

ice_cream = Dessert.new("Ice Cream", pain_quotidien)
muffin = Dessert.new("Muffin", pain_quotidien)
croissant = Dessert.new("Croissant", pain_quotidien)
#butter = Dessert.new("butter", starbucks,sugar)

ice_cream.add_ingredient(sugar)
print ice_cream
muffin.add_ingredient(butter)
croissant.add_ingredient(flour)


#puts pain_quotidien.name
#print IngredientsDessert.all

#sugar.add_dessert(ice_cream)
print pain_quotidien.desserts
#print starbucks.desserts

#puts ice_cream.bakery
