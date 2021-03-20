require 'nokogiri'
require 'open-uri'



class Workout::Scraper


  
    
    def self.scrape_workouts
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        kickboxing_workout = []
        num_pages_to_scrape = 5
        count = 0

        while (num_pages_to_scrape > count)
            workout = page.css(".workout-card-info-col h2").each do |w| 
               workout_name = w.text 
               kickboxing_workout << {workout_name:workout_name}
            end
              

           # Workout::KickboxingWorkout.new(workout_name)
            # workout_url = page.css(".workouts-index-workout a").attr("href").value
            #     Workout::KickboxingWorkout.new(workout_url)
             count += 1
        end
        
           # Workout::KickboxingWorkout.new(workout_url)
            #coach = x.search("p.workout-card-trainer").text
            #Workout::Coaches.new(name)
        
            kickboxing_workout

    end

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

    def self.scrape_workout_details

        url = page.css(".workouts-index-workout a").each do |u|
            workout_url = u.css.attr("href")
            kickboxing_workout << {workout_url:workout_url}
         end
    end
end