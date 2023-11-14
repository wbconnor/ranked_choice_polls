polls = [
  { title: 'Favorite color?' },
  { title: 'Favorite food?' },
  { title: 'Favorite animal?' }
]

user_name = "Bojack Horseman"
user = User.find_or_create_by(name: user_name)

polls.each do |poll_attributes|
  user.created_polls.find_or_create_by(poll_attributes)
end

puts "There are now #{Poll.count} polls."