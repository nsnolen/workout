require 'nokogiri'
require 'open-uri'



class Workout::Scraper

    # def self.scrape_workouts_url
    #     workouts = []
    #     page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
    #     num_pages_to_scrape = 3
    #     count = 0

    #     while (num_pages_to_scrape > count)
            
    #               row = page.css(".workout-card-info-row").each do |x|
    #                     workout_name = x.css(".workout-card-info-col h2").text 
    #                     coaches = x.search("p.workout-card-trainer").text
    #                     rounds = x.css("p.workout-card-rounds-nbr").text
    #                     workouts <<{workout_name:workout_name, coaches:coaches, rounds:rounds}
    #             end

        
    #         count += 1
    #     end
    #     binding.pry
    #     workouts      
    # end


    # def self.scrape_coaches
    #     page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
    #         coach = page.search("p.workout-card-trainer")
    #         coach.each do |c|
    #             name = c.text
    #             Workout::Coaches.new(name)
                
    #     end
    # end

    # def self.scrape_rounds 
    #     page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))

    #         rounds = page.search("p.workout-card-rounds-nbr")
    #         rounds.each do |r|
    #             number = r.text
    #             Workout::Rounds.new(number)
    #         end
    #     end


    def self.scrape_url
        page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/"))
        kickboxing_workout = []
        page.css(".workout workouts-index-workout a").each do |u|
            binding.pry
            workout_url = u.search("href").text
         
         kickboxing_workout<<{workout_url: workout_url}
        end
    
       

    end

    def self.scrape_workout_details
        kickboxing_workout = {}
        workout_page = Nokogiri::HTML(open("https://joinfightcamp.com/workouts/{kickboxing_workout.workout_url}"))
        binding.pry
        workout_name = workout_page.css(".workout-data-info-col h1").text 
        rounds = workout_page.css(".workout-data-rounds-nbr p").text
        coach = workout_page.css(".workout-data-info-col p").text
        time = workout_page.css(".workout-data-duration-minutes p").text
        details = workout_page.css(".workout-description").text 
    
    end


end