class Workout::Rounds
    attr_accessor :number

    @@all = []

    def initilize(name)
        @number = number
        save

    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
end