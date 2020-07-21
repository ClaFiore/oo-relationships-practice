require "pry"

class Ingredient

    attr_reader :name, :cal
    @@all = []
    def initialize(name, cal)
        @name = name
        @cal=cal
        @@all << self
    end

    def add_dessert(dessert)
        IngredientsDessert.new(dessert, self)
    end

    def dessert
        matching = IngredientsDessert.all.select do |relation|
            relation.ingredient == self 
        end
        matching.map do |match|
            match.dessert
        end
    end

    def bakeries
        self.dessert.map do |obj|
        obj.bakery
        end
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        self.all.find_all do |ingred|
            ingred.name.downcase.include?(ingredient.downcase)
        end
    end

end