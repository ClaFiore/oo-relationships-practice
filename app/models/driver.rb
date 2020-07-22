class Driver
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
            ride.driver == self end
    end

    def passengers
        self.rides.map do |ride_driv|
            ride_driv.passenger end
    end

    def tot_distance
        self.rides.map do |ride_driv|
            ride_driv.distance end.sum
    end

    def self.mileage_cap(distance)
            self.all.select do |driver|
                driver.tot_distance > distance end
    end
end