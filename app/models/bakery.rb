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
    array = [] #for a given bakery we need to find all of its desserts, and then check the ingredients of each desserts and add them to the array
    self.desserts.each do |dessert|
        dessert.ingredients.each do |ingredient|
            if !array.include?(ingredient)
            array << ingredient
            end
        end
    end
    array
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
    end.join(', ')
end

end