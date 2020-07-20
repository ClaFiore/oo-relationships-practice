class Dessert

    attr_reader :name, :bakery
    @@all_dessert = []

    def initialize(name, bakery, ingredient)
        @name = name
        @bakery = bakery
        @ingredient = ingredient
        @@all_dessert << self
    end

    def self.all_dessert
        @@all_dessert
    end



end
