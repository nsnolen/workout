require 'nokogiri'
require 'open-uri'



class Workout::Scraper
    
    def self.scrap_workout
        binding.pry
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        workout = []
        page.each do |x|
            workout_name = (".workout-card-info-col h2").text
            workout_url = (".workouts-index-workout a").attr("href").value
            coach = page.search("p.workout-card-trainer").text
        
            workout << {workout_name: workout_name, workout_url: workout_url, coach: coach}
        end
        workout
    end
 #workout_name = page.css(".workout-card-info-col h2").text
 #coach = page.search("p.workout-card-trainer").text
 #workout_url = page.css(".workouts-index-workout a").attr("href").value
end