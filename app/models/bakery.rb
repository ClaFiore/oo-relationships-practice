

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
    self.ingredients
    end
    binding.pry
end


 # total_cal = ice_cream.calories + croissant.calories + muffin.calories
    #  puts total_cal / 3

end