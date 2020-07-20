
require "pry"
class Dessert

    attr_reader :name, :bakery,:ingredient
    @@all_dessert = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @ingredient = ingredient
        @@all_dessert << self
    end

    def self.all_dessert
        @@all_dessert
    end

    def add_ingredient(ingredient)
        IngredientsDessert.new(self, ingredient)
        binding.pry
    end
    



end
