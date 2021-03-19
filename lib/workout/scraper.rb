require 'nokogiri'
require 'open-uri'



class Workout::Scraper
    
    def self.scrape_workouts
       
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        num_pages_to_scrape = 93
        count = 0

        while (num_pages_to_scrape > count)

        name = page.css(".workout-card-info-col h2")
        name.each do |workout|
            workout_name = workout.text
            Workout::KickboxingWorkout.new(workout_name)
        end
        count += 1
    end
        # url = page.css(".workouts-index-workout a")
        # url.each do |u|
        #     workout_url = u.css.attr("href").value
        #     Workout::KickboxingWorkout.new(workout_url)
        # end
           # Workout::KickboxingWorkout.new(workout_url)
            #coach = x.search("p.workout-card-trainer").text
            #Workout::Coaches.new(name)
           # workout << {workout_name: workout_name, workout_url: workout_url, coach: coach}
            
       

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