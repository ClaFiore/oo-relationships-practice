class Trip
    @@all = []
    attr_reader :listing, :guest, :trip

    def initialize(listing, guest)
        @trip = self
        @listing = listing
        @guest = guest
        @@all << self
    end
    
    def self.all
        @@all
    end


end