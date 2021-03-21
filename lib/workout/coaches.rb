class Workout::Coaches 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        save
    end

    def self.all
       # Workout::Scraper.scrape_workouts if @@all.empty?
       @@all
    end

    def save
        @@all << self 
    end

   
end