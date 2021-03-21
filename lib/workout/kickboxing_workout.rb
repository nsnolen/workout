class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url, :rounds, :time, :details
    attr_reader :coaches
    
    @@all = []

    def initialize(workout_name, coaches, rounds)
      
       @workout_name = workout_name if workout_name
       #@workout_url = workout_url if workout_url
       @coaches = coaches if coaches
       @rounds = rounds if rounds
        save
    end

    def save
        @@all << self 
    end
    
    def self.all
        Workout::Scraper.scrape_workouts if @@all.empty?
        @@all
    end

    def coaches=(coaches)
        @coaches = coaches 
        coaches.add_workout(self) unless coaches.kickboxing_workout.include?(self)
    end
   
end