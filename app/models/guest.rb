class Guest
    attr_reader :name, :listings
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def listings #returns an array of all listings a guest has stayed at
        Trip.all.select do |relation|
            relation.guest == self
        end
    end

    def trips #returns an array of all trips a guest has made
        self.listings.map do |each_obj|
                each_obj.trip
                #binding.pry
        end
    end

    def trip_count
        self.trips.length
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1 end
    end

    def self.find_all_by_name(name)
        Guest.all.select do |guest|
            guest.name.include?(name)
        end
    end

    # def add_trip(listing)
    #     Trip.new(listing, self)
    # end

    

end