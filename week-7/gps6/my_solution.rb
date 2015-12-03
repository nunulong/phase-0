# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # initialize the class with three inputs: state_of_origin, population_dentisy, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # when called, output the final reports of each state
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # print the deaths of each state with different population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


  # print the virus spread speed of each state with different population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed_plus = 0.5
    elsif @population_density >= 150
      speed_plus = 1
    elsif @population_density >= 100
      speed_plus = 1.5
    elsif @population_density >= 50
      speed_plus = 2
    else
      speed_plus = 2.5
    end
    speed += speed_plus
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value| 
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

A: Difference is that the key applies to different data types. Outer hash uses string as key, while inner hash uses symbol as key.

What does require_relative do? How is it different from require?

A: require_relative can read the file outside the working file. The difference is that require only recognizes the ruby library data, while require_relative can recognize any data under the directory.

What are some ways to iterate through a hash?

A: We can use each, map to iterate through a hash with the syntax hash.each/map {|key, value| iteration body}.

When refactoring virus_effects, what stood out to you about the variables, if anything?

A: I learn that once you initialize the instance variable and assign the value to it, you can use it anywhere inside the class cross methods. You don't have to make it as argument and to access it. So we can get rid of the arguments from two private methods.

What concept did you most solidify in this challenge?

A: Instance variable, refactoring code, and hash utilization are solidified. 

=end