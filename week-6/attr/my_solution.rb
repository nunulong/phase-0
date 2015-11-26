#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: a name that is stored in the Greetings class
# Output:a string that display greetings and the name
# Steps:

=begin
create name reader
initialize the name instance variable 
initialize the Greetings class by creating a new instance of NameData class
define a hello method to display the greetings and the name
instantialize the Greetings class, and call the hello method.
=end
class NameData
  # name getter to access the name instance variable
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Greetings
  # initialize Greetings class by creating a new instance of NameData class
  def initialize()
    @new_person = NameData.new("Ting Wang")
  end
  def hello
    puts "Hello #{@new_person.name}! How wonderful to see you today."
  end
end

# Creating a new Greetings instance
greetings = Greetings.new
greetings.hello



# Reflection

# Release 1

# What are these methods doing?

# A: The print_info method prints all the information in the instance. The what_is_x methods will return the instance variables' value. The change_my_x=(new_x) methods will set the new values to the instance variables. Profile.new method will create a new Profile instance. The sleep method will pause the process for certain period of time. Initialize method will initialize the instance variables' values.

# How are they modifying or returning the value of instance variables?

# A: The class uses what_is_x methods to return values of instance variables, and uses change_my_x=(new_x) to modify the values of instance variables. when calling the what_is_x methods, the instance variables will be returned. When calling the change_my_x=(new_x) methods, the new_x values will be assigned to instance variables.

# Release 2

#What changed between the last release and this release?

# A: the age was changed to attribute reader that is the getter of the instance variable of age

#What was replaced?

# A: The what_is_age method is replaced by attr_reader :age.

#Is this code simpler than the last?

# A: Yes, it is simpler when you want to return the age's value by calling .age method. Also we get rid of the what_is_age method.

# Release 3

# What changed between the last release and this release?

# A: the age was changed to sttribute reader and writer which are the getter and setter of the instance variable of age.

# What was replaced?

# A: The what_is_age and change_my_age=(new_age) methods are replaced.

# Is this code simpler than the last?

# A: Yes, it is simpler than last one since we get rid of two age methods. We just call .age to return or set the value of age.

# Release 5
# What is a reader method?

# A: reader method is the getter of instance variable that can return the instance variable's value.

# What is a writer method?

#A: writer method is the setter of instance variable that can modify the value of instance variable.

# What do the attr methods do for you?

# A: attr methods get transition of the traditional methods which also return and modify the instance variables. But attr makes it a lot simpler.

# Should you always use an accessor to cover your bases? Why or why not?

# A: No, the accessor can modify and get the value of instance variables. In some occasions, you may only get the value but don't want other classes to modify the instance variable. You should only use reader. While, in some occasions, you may just modify the value but don't want to get the value by other classes. You'd better use writer. Sometimes, you may want to modify and return the value of instance variable and you need to choose accessor.

# What is confusing to you about these methods?

# A: I think it is explained by textbook very clearly and I just practice using these methods more and get used to them.