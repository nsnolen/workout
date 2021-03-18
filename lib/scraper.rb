require 'nokogiri'
require 'open-uri'

class Scraper
    
    def scrap
        binding.pry
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
    
    end
 #work_outname = page.css(".workout-card-info-col h2").text
 #coach = page.css(".workout-card-info-col").css(".workout-card-trainer")
 #workout_url = page.css("workout workouts-index-workout a") href
end