class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url, :rounds, :time, :details, :coaches
    
    @@all = []

    def initialize(kickboxing_workout)
      kickboxing_workout.each do |attribute, value|
        self.send("#{attribute}=", value)
      end
        save
    end

    def self.create_from_collection(workout_array)
        workout_array.each{|wo| Workout::KickboxingWorkout.new(wo)}
    end

    def add_workout_attributes(attributes_hash)
        attributes_hash.each{|attribute, value| self.send("#attribute}=", value)}
    end

    def save
        @@all << self 
    end
    
    def self.all
        @@all
    end

end