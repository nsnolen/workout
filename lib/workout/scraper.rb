require 'nokogiri'
require 'open-uri'



class Workout::Scraper
    
    # def self.scrape_workout
       
    #     page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
    #    # workout = []
    #     page.each do |x|
    #         workout_name = (".workout-card-info-col h2").text
    #         Workout::KickboxingWorkout.new(workout_name)
    #         workout_url = (".workouts-index-workout a").attr("href").value
    #         Workout::KickboxingWorkout.new(workout_url)
    #         coach = x.search("p.workout-card-trainer").text
    #         Workout::Coaches.new(name)
    #        # workout << {workout_name: workout_name, workout_url: workout_url, coach: coach}
    #     end
    #    # workout
    # end

    def self.scrape_coaches
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
    
            coach = page.search("p.workout-card-trainer")
            coach.each do |c|
                name = c.text
                Workout::Coaches.new(name)
                
        end
    end
 #workout_name = page.css(".workout-card-info-col h2").text
 #coach = page.search("p.workout-card-trainer").text
 #workout_url = page.css(".workouts-index-workout a").attr("href").value
end