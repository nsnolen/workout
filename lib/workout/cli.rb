require 'pry'
class Workout::CLI 

    def call
       list_workouts
       
    end

    def list_workouts
        puts "Welcome to Fight Camp workouts! Here's a list of just a few of our many workouts:"
        @workouts = Workout::KickboxingWorkout.all 
        @workouts.each do |wo, info|
           binding.pry
            wo.each do |workout_name, value|
                if workout_name == :workout_name 
                    value.each do |name|
                        puts "#{name}"
                    end
                end
            end
        end
    end

    def gets_workout_sort_by_preference
        view_by_input = gets.strip.to_i
       display_chosen_input(view_by_input) if view_by_input.to_i <= 3 && view_by_input.to_i > 0
    end
    

    def display_chosen_input(view_by_input)
        if view_by_input == 1 
           display_coaches
        elsif view_by_input == 2
            display_rounds
        elsif view_by_input == 3
            display_time
        end
    end
    
    def display_coaches 
        puts "Which coach?! Select the coach you'd like to workout with, by typing the corresponding number!"
        @coaches =  Workout::Coaches.all
        @coaches.uniq.each.with_index(1) do |coach, index| 
            puts "#{index}. #{coach.name}"
        end
        pick_your_coach
    end

    def display_rounds 
        puts "How many round?! Select the number of the rounds you'd like to workout by typing the corresponding number!"
        @rounds = Workout::Rounds.all
        @rounds.each.with_index(1) do |round, index|
         puts "#{index}. #{round.number}"
        end
    end 

    def display_time 
        puts "How long?! Select the time you'd like to workout by typing the corresponding number!"
        @time = Workout::Time.all
        @time.each.with_index(1) do |time, index| 
            puts "#{index}. #{time} minutes"
        end
        pick_your_time
    end

    def valid(input, data)
        input.to_i <= data.length && input.to_i > 0
     end

    def pick_your_coach 
        input_coach = gets.strip.to_i
        get_workout_list(input_coach, @coach) if valid(input_coach, @coaches)
    end

    def get_workout_list(pick_your_coach, workout_list)
        chosen_coach = @coaches[pick_your_coach - 1]
        @workout_list = Workout::KickboxingWorkout.all
        @workout_list.each do |workout, data|
            data.each do |attribute, value|
                if attribute == :coaches 
                    value.each do |coach|
                        if coach == chosen_coach
                        puts "#{workout.workout_name}"
                        end
                    end
                end
            end
        end
           
    end
     

     def display_workout_list(input, data)
        @workout_list = Workout::KickboxingWorkout.all
        @workout_list.each{|data| }
        binding.pry
        @workout_list.each.with_index(1) do |workout, index|
            puts "#{index}. #{workout.workout_name}"
        end
     end

    

    #  def display_workout_list(input_rounds)
    #     @workout_list = ["workout_1", "workout_2", "workout_3"]
    #     @workout_list.each.with_index(1) do |workout, index|
    #         puts "#{index}. #{workout}"
    #     end
    #  end

    #  def pick_your_time 
    #     input_time = gets.strip.to_i
    #     display_workout_list(input_time) if valid(input_time, @time)
    # end

    #  def display_workout_list(input_time)
    #     @workout_list = ["workout_1", "workout_2", "workout_3"]
    #     @workout_list.each.with_index(1) do |workout, index|
    #         puts "#{index}. #{workout}"
    #     end
    #  end
   

   

end


