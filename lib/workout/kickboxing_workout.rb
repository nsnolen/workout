class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url
    attr_reader :coaches, :time, :rounds
    
    @@all = []
    
    def initialize(workouts) 
        workouts.each do |attribute, value|
            self.send("#{attribute}=", value)
        end
        save
    end

    def self.create_from_hash(workouts)
        scrape_workouts.each{|workout| KickboxingWorkout.new(workout)}
    end

    def save
        @@all << self 
    end
    
    def self.all
        Workout::Scraper.scrape_workouts if @@all.empty?
        @@all
    end
   
end