require 'pry'
class Workout::CLI 

    def call 
        puts "Welcome to Fight Camp workouts!"
        workout_type
        input_workout_type
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
            puts "flo, smash" 
        elsif input == 2
            puts "1, 2, 3"
        elsif input == 3
            puts "12, 16, 30"
        end
        
    end

end


