require 'rainbow'

# Animal:
#
# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

# require 'pry'

class Animal
  attr_accessor :name, :age, :gender, :species, :toys
  def initialize(name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = [toys].join(', ')
  end

  def to_s
      Rainbow("Animal name #{@name}.\nHow old is #{@name}? #{@age}.\nWhats the gender of#{@name}? #{@gender}.\nWhat are #{@name}'s toy'(s)'? #{@toys}.\n").yellow.bg(:black)
  end
end

# binding.pry
