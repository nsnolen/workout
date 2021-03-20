class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url, :coach, :rounds, :time, :details
    
    @@all = []

    def initialize(workout_name, workout_url, coach)
       @workout_name = workout_name if workout_name
       @workout_url = workout_url if workout_url
       @coach = coach if coach
      # @rounds = rounds if rounds
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