
[1mFrom:[0m /mnt/c/Users/nolen/dev/flatiron/projects/workout/lib/workout/scraper.rb:25 Workout::Scraper.scrape_coaches:

    [1;34m24[0m: [32mdef[0m [1;36mself[0m.[1;34mscrape_coaches[0m
 => [1;34m25[0m:     binding.pry
    [1;34m26[0m:     page = [1;34;4mNokogiri[0m::HTML(open([31m[1;31m"[0m[31mhttps://joinfightcamp.com/workouts/[1;31m"[0m[31m[0m))
    [1;34m27[0m: 
    [1;34m28[0m:         coach = page.search([31m[1;31m"[0m[31mp.workout-card-trainer[1;31m"[0m[31m[0m)
    [1;34m29[0m:         coach.each [32mdo[0m |c|
    [1;34m30[0m:             name = c.text
    [1;34m31[0m:             [1;34;4mWorkout[0m::[1;34;4mCoaches[0m.new(name)
    [1;34m32[0m:             
    [1;34m33[0m:     [32mend[0m
    [1;34m34[0m: [32mend[0m

