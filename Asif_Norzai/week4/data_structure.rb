require 'pry'

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
users['Jonathan'].first[1]

# How would you add the number 7 to Erik's favorite numbers?
users['Erik'].values[1].push 7

# How would you add yourself to the users hash?
users['Asep'] = {:twitter  => 'AsepNorzai', :favorite_numbers=>[1, 2, 4]}

# How would you return the array of Erik's favorite numbers?
users['Erik'].values[1]

# How would you return the smallest of Erik's favorite numbers?
users['Erik'].values[1].min

# How would you return an array of Anil's favorite numbers that are also even?
anilArr = users['Anil'].values[1]
anilArr.map do |even|
  if even % 2 === 0
    puts even
  end
end

# How would you return an array of the favorite numbers common to all users?
anilArr = users['Anil'].values[1]
jonArr = users['Jonathan'].values[1]
erikArr = users['Erik'].values[1]
asepArr= users['Asep'].values[1]
common_num = []
compare_it = jonArr + asepArr + erikArr + anilArr
common_num = compare_it.detect{ |c| compare_it.count(c) > 1 }


# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
anilArr = users['Anil'].values[1]
jonArr = users['Jonathan'].values[1]
erikArr = users['Erik'].values[1]
asepArr= users['Asep'].values[1]
compare_it = jonArr + asepArr + erikArr + anilArr
all_favorite_num = compare_it.uniq.sort
puts all_favorite_num

binding.pry
