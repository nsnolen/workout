require 'nokogiri'
require 'open-uri'



class Workout::Scraper

    def self.scrape_workouts
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        num_pages_to_scrape = 5
        count = 0

        while (num_pages_to_scrape > count)
            row = page.css(".workout-card-info-row").each do |x|
                workout_name = x.css(".workout-card-info-col h2").text 
                workout_url = x.css(".workouts-index-workout a").attr("href")
                coach = x.search("p.workout-card-trainer").text
                #rounds = x.("p.workout-card-rounds-nbr").text
                Workout::KickboxingWorkout.new(workout_name, workout_url, coach)
            end
            
           # workout_url = page.css(".workouts-index-workout a").attr("href").value
           # Workout::KickboxingWorkout.new(workout_url)
            count += 1
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

    def self.scrape_rounds 
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))

            rounds = page.search("p.workout-card-rounds-nbr")
            rounds.each do |r|
                number = r.text
                Workout::Rounds.new(number)
            end
        end

 #workout_name = page.css(".workout-card-info-col h2").text
 #coach = page.search("p.workout-card-trainer").text
 #workout_url = page.css(".workouts-index-workout a").attr("href").value

    def self.scrape_url
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        kickboxing_workout = []
        page.css(".workouts-index-workout a").each do |u|
            workout_url = u.css.attr("href")
         end
       

    end

    def self.scrape_workout_details(workout_url)
        kickboxing_workout = {}
        workout_page = Nokogiri::HTML(open(workout_url))
        binding.pry
        workout_name = workout_page.css(".workout-data-info-col h1").text 
        rounds = workout_page.css(".workout-data-rounds-nbr p").text
        coach = workout_page.css(".workout-data-info-col p").text
        time = workout_page.css(".workout-data-duration-minutes p").text
        details = workout_page.css(".workout-description").text 
    
    end


end