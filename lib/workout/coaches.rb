class Workout::Coaches 
    attr_accessor :name

    @@all = ["Flo", "Smash", "Smash"]

    def initilize(name)
        @name = name 
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