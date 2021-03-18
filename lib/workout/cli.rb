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
        #binding.pry 
        #display_type if input.valid(input)
    end

    def valid?(input)
        binding.pry
        if input.to_i <= 3 && input.to_i > 0
    end

    def display_workouts
        
    end

end


