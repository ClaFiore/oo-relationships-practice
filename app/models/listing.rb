class Listing

attr_reader :city, :guests
@@all = []

def initialize(city)
    @@all << self
    @city = city
end

def self.all
    @@all
end

# def add_guest(guest)
#     Trip.new(self, guest)
# end

def guests #=> dc.guests => [robin obj, andrew obj]
    Trip.all.select do |relation|
        relation.listing == self end
end

def trips #=> dc.trips => 
    self.guests.map do |guest|
        guest.trip end
end

def trip_count
    self.trips.length
end

def self.find_all_by_city(city)
    self.all.select do |listing|
        listing.city.include?(city) end
end

def self.most_popular #Listing.most_popular => dc
   #find max of trip_count
   array_lengths = []
   self.all.each do |x|
    array_lengths << x.trip_count
    end
    pop_listing_length = array_lengths.max
    #find the listing with max trip_count
    location = self.all.find do |x|
        x.trip_count == pop_listing_length
    end
    location
end


end