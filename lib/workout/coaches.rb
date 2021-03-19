class Workout:Coaches 
    attr_accessor :name

    @@all = []

    def initilize(name)
        @name = name 
    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
end