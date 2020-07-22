require "pry"
require_relative "./passenger.rb"
require_relative "./driver.rb"
require_relative "./ride.rb"

alex = Passenger.new("Alex")
robin = Passenger.new("Robin")
deanne = Passenger.new("Deanne")

aladin = Driver.new("Aladin")
abu = Driver.new("Abu")
tarzan = Driver.new("Tarzan")

ride1 = Ride.new(alex, abu, 55)
ride2 = Ride.new(robin, tarzan, 2)
ride3 = Ride.new(robin, aladin, 1.5)
ride4 = Ride.new(deanne, aladin, 300)
ride5 = Ride.new(alex, tarzan, 50)

#p ride5.passenger
#p Ride.average_distance
# aladin.passengers

#p aladin.tot_distance
#p Driver.mileage_cap(2.5)

#p robin.total_distance
p Passenger.premium_members


