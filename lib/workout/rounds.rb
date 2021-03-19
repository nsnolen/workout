class Workout::Rounds
    attr_accessor :number

    @@all = ["4", "6", "8", "10"]

    def initialize(name)
        @number = number
        @kickboxingWorkout = []
        save

    end

    def save
        @@all << self 
    end

    def self.all
        Workout::Scraper.scrape_rounds if @@all.empty?
        @@all
    end
end