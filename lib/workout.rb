# frozen_string_literal: true

require_relative "./workout/version"
require_relative "./workout/scraper"
require_relative "./workout/cli"
require_relative "./workout/coaches"
require_relative "./workout/time"
require_relative "./workout/rounds"
require_relative "./workout/kickboxing_workout"
require 'pry'

module Workout
  class Error < StandardError; end
  # Your code goes here...
end
