require 'nokogiri'
require 'open-uri'



class Workout::Scraper
    
    def self.scrape_workouts
        workouts = {}

        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        num_pages_to_scrape = 5
        count = 0

        while (num_pages_to_scrape > count)

            name = page.css(".workout-card-info-col h2")
            name.each do |workout|
                workout_name = workout.text
                Workout::KickboxingWorkout.new(workout_name)
            end

            url = page.css(".workouts-index-workout a")
            url.each do |u|
                workout_url = u.css.attr("href")
                Workout::KickboxingWorkout.new(workout_url)
            end
            count += 1
            workouts << {workout_name: workout_name, workout_url: workout_url}
        end
        
           # Workout::KickboxingWorkout.new(workout_url)
            #coach = x.search("p.workout-card-trainer").text
            #Workout::Coaches.new(name)
           
            


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
end