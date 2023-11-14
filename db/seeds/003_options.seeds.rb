color_poll = Poll.find_by(title: "Favorite color?")

color_options = ["Red", "Blue", "Green", "Yellow", "Purple"]

color_options.each do |name|
  color_poll.options.find_or_create_by(name: name)
end

food_poll = Poll.find_by(title: "Favorite food?")

food_options = ["Pizza", "Sushi", "BBQ", "Tacos", "Salad"]

food_options.each do |name|
  food_poll.options.find_or_create_by(name: name)
end

animal_poll = Poll.find_by(title: "Favorite animal?")

animal_options = ["Cat", "Dog", "Fish", "Bird", "Lizard", "Opossum"]

animal_options.each do |name|
  animal_poll.options.find_or_create_by(name: name)
end

puts "There are now #{Option.count} options."