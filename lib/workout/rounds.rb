class Workout::Rounds
    attr_accessor :number

    @@all = []

    def initialize(number)
        @number = number
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