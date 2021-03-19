class Workout::Rounds
    attr_accessor :number

    @@all = ["4", "6", "8", "10"]

    def initilize(name)
        @number = number
        @kickboxingWorkout = []
        save

    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
end