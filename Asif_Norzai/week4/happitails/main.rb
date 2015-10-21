# HappiTails
# Objectives:
#
# Practice creating objects
#
# You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals.
#
# Specification:
#
# Object Specs:
#
# Phase 1
#
# Can create animals and clients
# Phase 2
#
# New animals and clients can be added to the shelter
# Phase 3
#
# When creating an animal or client, the user is prompted for information like names, gender etc.
# Phase 4
#
# At start, the user is prompted with a menu of options:
# display all animals
# display all clients
# create an animal
# create an client
# facilitate client adopts an animal
# facilitate client puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process


require './animal'
require './client'
require 'pry'
require 'rainbow'
require 'colorize'


# Shelter:
# The shelter should display all the clients.
# The shelter should display all the animals.
shelter_animal = []
shelter_client = []

# Relationships:
# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption
adopt_animal = []
put_for_adopt = []
adding_on = true

# new_animal = Array(Animal.new('Zmarai', 2, 'Male', 'Husky', 'Ducks, Tennish Balls'))
# shelter_animal << new_animal

# new_client = Array(Client.new('Asep', 1, 21, 1))
# shelter_client << new_client

def go
  puts Rainbow(<<-PARAGRAPH  # hyphen allows the end marker to be indented
  \n\n\n
  /$$   /$$                               /$$ /$$$$$$$$        /$$ /$$
 | $$  | $$                              |__/|__  $$__/       |__/| $$
 | $$  | $$  /$$$$$$   /$$$$$$   /$$$$$$  /$$   | $$  /$$$$$$  /$$| $$  /$$$$$$$
 | $$$$$$$$ |____  $$ /$$__  $$ /$$__  $$| $$   | $$ |____  $$| $$| $$ /$$_____/
 | $$__  $$  /$$$$$$$| $$  \ $$| $$  \ $$| $$   | $$  /$$$$$$$| $$| $$|  $$$$$$
 | $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$   | $$ /$$__  $$| $$| $$ \____  $$
 | $$  | $$|  $$$$$$$| $$$$$$$/| $$$$$$$/| $$   | $$|  $$$$$$$| $$| $$ /$$$$$$$/
 |__/  |__/ \_______/| $$____/ | $$____/ |__/   |__/ \_______/|__/|__/|_______/
                     | $$      | $$
                     | $$      | $$
                     |__/      |__/ \n
  PARAGRAPH
  ).blue.bright.blink
end

go



puts Rainbow("To Display all Animals, Press:                        1 ").black.bg(:yellow)
puts Rainbow("To Display all Clients, Press:                        2 ").black.bg(:yellow)
puts Rainbow("To Create an Animal, Press:                           3 ").black.bg(:yellow)
puts Rainbow("To Create a Client, Press:                            4 ").black.bg(:yellow)
puts Rainbow("Adopt an Animal, Press:                               5 ").black.bg(:yellow)
puts Rainbow("Put an Animal for adoption, Press:                    6 ").black.bg(:yellow)

while adding_on == true do
  option_what = gets.chomp

  if option_what == '1'
    puts shelter_animal
    Rainbow(puts adopt_animal).yellow.bg(:black)
  elsif option_what == '2'
    puts shelter_client

  elsif option_what == '3'
  #####################################Animal Info#############################
    puts "Enter The Animal's Name"
    name = gets.chomp

    puts "Enter The Animal's age"
    age = gets.chomp

    puts "Enter The Animal's Gender"
    gender = gets.chomp

    puts "Enter The Animal's Species"
    species = gets.chomp

    puts "Enter The Animal's Toys"
    toys = gets.chomp

    new_animal = Array(Animal.new(name, age, gender, species, toys))
    shelter_animal << new_animal

  elsif option_what == '4'
      #####################################Client Info#############################
      puts "Enter The Client's Name"
      name = gets.chomp

      puts "Enter The Number Of Client's Children"
      num_children = gets.chomp

      puts "Enter The Client's Age"
      age = gets.chomp

      puts "Enter The Number Of Client's Pets"
      num_pets = gets.chomp

      new_client = Array(Client.new(name, num_children, age, num_pets))
      shelter_client << new_client

  elsif option_what == '5'
    adopt_animal << shelter_animal.shif
    puts Rainbow("Animal Adopted ").blink.green
  elsif option_what == '6'
    shelter_animal << adopt_animal.pop
    puts Rainbow("Animal Unadopted ").blink.red
  else
    adding_on = false
  end
end
binding.pry
