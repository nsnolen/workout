class Workout::Time 
    attr_accessor :minutes

    @@all = []

    def initilize(minutes)
        @minutes = minutes
        save
    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
end