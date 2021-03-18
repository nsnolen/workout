class Workout::KickboxingWorkout
    attr_accessor :workout_name, :coaches, :time, :rounds
    
    @@all = []
    
    def initilize(workout_name)  
        @workout_name = workout_name 
        save
    end

    def save
        @@all << self 
    end
    
    def self.all
        @@all
    end
   
end