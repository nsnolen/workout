class Workout::KickboxingWorkout
    attr_accessor :workout_name, :workout_url
    attr_reader :coaches, :time, :rounds
    
    @@all = []
    
    def initialize(students) 
        students.each do |attribute, value|
            self.send("#{attribute}=", value)
        end
        save
    end

    def self.create_from_collection(workouts)
        workouts.each{|workout| KickboxingWorkout.new(workout)}
    end

    def save
        @@all << self 
    end
    
    def self.all
        Workout::Scraper.scrape_workouts if @@all.empty?
        @@all
    end
   
end