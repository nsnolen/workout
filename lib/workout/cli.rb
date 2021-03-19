require 'pry'
class Workout::CLI 

    def call 
        puts "Welcome to Fight Camp workouts!"
        workout_type
        gets_workout_sort_by_preference
       # gets_workout_list
    
        #input_next_selection
       # input_learn_more
       # display_learn_more
    end

    def workout_type
        puts %{"How would you like to filter your kickboxing workouts?
        1. Coach
        2. Rounds
        3. Time}
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
    
    #  def get_coaches 
    #      @coaches = Workout::Coaches.all 
         
    #  end

    def display_coaches 
        puts "Which coach?! Select the coach you'd like to workout with, by typing the corresponding number!"
       
        @coaches = Workout::Coaches.all  
        @coaches.uniq.each.with_index(1) do |coach, index| 
            puts "#{index}. #{coach.name}"
        end
    end

    def display_rounds 
        puts "How many round?! Select the number of the rounds you'd like to workout by typing the corresponding number!"
        @rounds = Workout::Rounds.all 
        @rounds.uniq.each.with_index(1) do |rounds, index| 
         puts "#{index}. #{rounds}"
     end
    end 

    def display_time 
        puts "How long?! Select the time you'd like to workout by typing the corresponding number!"
        @time = Workout::Time.all
        @time.uniq.each.with_index(1) do |time, index| 
            puts "#{index}. #{time} minutes"
        end
    end


    # def gets_workout_list
    #     selected_workout_sort = gets.strip.to_i 
    #     display_workout_list(view_by_input, selected_workout_sort)
    # end

    # def valid(input, data)
    #     input.to_i <= data.length && input.to_i > 0
    # end

    # def display_workout_list(view_by_input, selected_workout_sort)
    #     if view_by_input == 1
    #         display_workouts_by_coaches(selected_workout_sort)
    #      elsif view_by_input == 2 
    #          display_workouts_by_rounds 
    #      elsif view_by_input == 3 
    #         display_workouts_by_time 
    #      end
            

    # end

    # def display_workouts_by_coaches(selected_workout_sort)
    #     input_two = selected_workout_sort.to_i - 1
    #     coach_selected = ["workout 1", "workout 2", "workout 3"]
    #     coach_selected.each.with_index do |wo, i|
    #         puts "#{i}. #{wo}"
    #     end
    # end


   

end


