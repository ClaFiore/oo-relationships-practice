require "pry"
require_relative "./guest.rb"
require_relative "./trip.rb"
require_relative "./listing.rb"

seattle = Listing.new("Seattle")
nyc = Listing.new("New York")
sf = Listing.new("San Francisco")
la = Listing.new("Los Angeles")
dc = Listing.new("Washington DC")
la_downtown = Listing.new("Los Angeles Downtown")

peter = Guest.new("Peter")
peter_smith = Guest.new("Peter Smith")
alex = Guest.new("Alex")
robin = Guest.new("Robin")
andrew = Guest.new("Andrew")

# peter.add_trip(seattle)
# peter.add_trip(la)
# alex.add_trip(nyc)
# alex.add_trip(sf)
# dc.add_guest(robin)
# dc.add_guest(andrew)
# andrew.add_trip(seattle)

dc_alex = Trip.new(dc, alex)
seattle_peter = Trip.new(seattle, peter)
la_peter = Trip.new(la, peter)
la_downtown_alex = Trip.new(la_downtown, alex)
nyc_alex = Trip.new(nyc, alex)
sf_alex = Trip.new(sf, alex)
dc_robin = Trip.new(dc, robin)
dc_andrew = Trip.new(dc, andrew)
seattle_andrew = Trip.new(seattle, andrew)
la_peter_smith = Trip.new(la, peter_smith)

#p Listing.most_popular
#p nyc.trip_count
#p Listing.find_all_by_city("Los Angeles")
#p dc.guests
#p Guest.find_all_by_name("Peter")
#p Guest.pro_traveller
#p Guest.all
#print peter.listings
#p peter.trips
#p peter.trip_count