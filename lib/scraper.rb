require 'nokogiri'
require 'open-uri'



class Workout::Scraper
    
    def self.scrap_workout
    
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        workout_name = page.css(".workout-card-info-col h2").text
        
    
    end
 #workout_name = page.css(".workout-card-info-col h2").text
 #coach = page.search("p.workout-card-trainer").text
 #workout_url = page.css(".workouts-index-workout a").attr("href").value

end