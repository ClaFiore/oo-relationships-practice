class Bakery
attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def desserts
Dessert.all_dessert.find_all do |dessert|
    dessert.bakery == self
    end

end

def ingredients
    self.desserts.map do |dessert|
     dessert.ingredient
    end
     
end

def average_calories
    each_cal = self.desserts.map do |des_obj|
        des_obj.calories
    end
    each_cal.inject  {|sum, n| sum + n } / each_cal.length
   #binding.pry
end

def shopping_list
    names = self.ingredients.map do |ing_obj|
    ing_obj.name
    end
    names.join(', ')
end

end