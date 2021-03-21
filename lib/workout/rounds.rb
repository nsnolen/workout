# class Workout::Rounds
#     attr_accessor :number

#     @@all = []

#     def initialize(number)
#         @number = number
#         save

#     end

#     def save
#         @@all << self 
#     end

#     def self.all
#         Workout::Scraper.scrape_rounds if @@all.empty?
#         @@all
#     end

#    # def add_workout(kickboxing_workout)
#        # @kickboxing_workout << kickboxing_workout if !@kickboxing_workout.include?(kickboxing_workout)
#         #kickboxing_workout.rounds = self if kickboxing_workout.rounds != self
#    #end


# end