require 'pry'
class Workout::CLI 

    def call 
        puts "Welcome to Fight Camp workouts!"
        workout_type
        input_workout_type
        display_chosen_input
       # input_learn_more
       # display_learn_more
    end

    def workout_type
        puts %{"How would you like to filter your kickboxing workouts?
        1. Coach
        2. Rounds
        3. Time}
    end

    def input_workout_type
        input = gets.strip.to_i
        display_chosen_input(input) if valid(input)
    end

    def valid(input)
        input.to_i <= 3 && input.to_i > 0
    end

    def display_chosen_input(input)
        if input == 1 
           # list_coaches 
            @coaches = ["Flo", "Smash", "Smash"]
            @coaches.uniq.each.with_index(1) do |coach, index| 
                puts "#{index}. #{coach}"
            end
        elsif input == 2
           @rounds = ["4", "6", "8", "10"]
           @rounds.uniq.each.with_index(1) do |rounds, index| 
            puts "#{index}. #{rounds}"
        end
        elsif input == 3
            @time = ["12", "16", "20", "30"]
            @time.uniq.each.with_index(1) do |time, index| 
                puts "#{index}. #{time} minutes"
            end
        end
        
    end

end


