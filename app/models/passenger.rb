class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self end
    end

    def drivers
        self.rides.map do |myride|
            myride.driver end
    end

    def total_distance
        self.rides.map do |myride|
            myride.distance end.sum
    end

    def self.premium_members
        all_rides = Ride.all.map do |ride|
            ride.passenger end
            all_rides.select do |pass| 
                pass.total_distance > 100 end.uniq
    end

end