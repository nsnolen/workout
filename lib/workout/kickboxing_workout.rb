class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url
    attr_reader :coaches, :time, :rounds
    
    @@all = []
    
    def initilize(workout_name)  
        @workout_name = workout_name 
        @workout_url = workout_url
        save
    end

    def save
        @@all << self 
    end
    
    def self.all
        Workout::Scraper.scrape_workouts if @@all.empty?
        @@all
    end
   
end