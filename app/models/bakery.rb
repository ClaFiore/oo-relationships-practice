
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
    dessert.bakery==self
end

def ingredients
     self.desserts.ingredient
end

end


end