require "pry"

class Ingredient

    attr_reader :name, :dessert

    def initialize(name, cal)
        @name = name
        @cal=cal
    end

    def add_dessert(dessert)
        
        IngredientsDessert.new(dessert, self)
    end




end