require "pry"
class Dessert

    attr_reader :name, :bakery
    @@all_dessert = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all_dessert << self
    end

    def self.all_dessert
        @@all_dessert
    end

    def add_ingredient(ingredient)
        IngredientsDessert.new(self, ingredient)
    end

    def ingredients
        matching = IngredientsDessert.all.select do |ingr_des|
            ingr_des.dessert == self 
        end
        matching.map do |match|
            match.ingredient
        end
    end

    def calories
        calories = 0
        self.ingredient.each do |ingred|
            calories = calories + ingred.cal
        end
        return calories.to_f
    end
    



end
