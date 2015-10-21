# Client:
#
# A client should have a name.
# A client should have a number of children.
# A client should have an age.
# A client should have a number of pets.

# require 'pry'
class Client
  attr_accessor :name, :num_children, :age, :num_pets
  def initialize(name, num_children, age, num_pets)
    @name = name
    @num_children = num_children
    @age = age
    @num_pets = num_pets
  end
  def to_s
    Rainbow("Client name? #{@name}.\nNumber of Children #{@name} have? #{@num_children}.\nWhats the age of #{@name}? #{@age}.\nHow many pets does #{@name} have? #{@num_pets}.\n").yellow.bg(:magenta)
  end
end

# binding.pry
