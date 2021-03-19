class Workout::Coaches 
    attr_accessor :name

    @@all = []

    def initilize(name)
        @name = name 
        save
    end

    def save
        @@all << self 
    end

    def self.all
        Workout::Scraper.scrape_coaches if @@all.empty?
        @@all
    end
end