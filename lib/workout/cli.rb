class Workout::cli 

    def call 
        puts "Welcome to Fight Camp workouts!"
        workout_type
        


    end

    def workout_type
        puts %w{How would you like to filter your kickboxing workouts?"
        1. Coach
        2. Rounds
        3. Time}
    end

end


