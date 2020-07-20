require "pry"
require_relative "./dessert.rb"
require_relative "./ingredients.rb"
require_relative "./IngredientsDessert.rb"
require_relative "./bakery.rb"

pain_quotidien = Bakery.new("Pain Quotidien")
starbucks = Bakery.new("Starbucks")

flour = Ingredient.new("Flour", 10)
sugar = Ingredient.new("Sugar", 30)
butter = Ingredient.new("butter", 20)
chocolate = Ingredient.new("Chocolate", 40)
choc_mousse = Ingredient.new("chocolate mousse", 40)

ice_cream = Dessert.new("Ice Cream", pain_quotidien)
muffin = Dessert.new("Muffin", pain_quotidien)
croissant = Dessert.new("Croissant", pain_quotidien)

apple_pie = Dessert.new("Apple_pie", starbucks)
tarte = Dessert.new("Tarte", starbucks)

ice_cream.add_ingredient(sugar)
muffin.add_ingredient(choc_mousse)
muffin.add_ingredient(butter)
croissant.add_ingredient(flour)

tarte.add_ingredient(sugar)
apple_pie.add_ingredient(flour)

#print croissant.add_ingredient(flour)

#print pain_quotidien.desserts  #=> [ice_cream, muffin, croissant]
puts "\n\n"
#print pain_quotidien.ingredients #=> [sugar, butter, flour]
#p tarte.bakery #=> pain_quotidien

#p sugar.dessert
#p sugar.bakeries #=> pain_quotidien , starbucks
#p Ingredient.find_all_by_name("Chocolate") #=> chocolate, choc_mousse
# p muffin.calories #=> 60.0
# p ice_cream.calories #30
# p croissant.calories #10
#p starbucks.average_calories #=>
#starbucks.average_calories

#p starbucks.shopping_list # "sugar, flour"

p starbucks.shopping_list
