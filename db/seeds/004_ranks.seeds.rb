poll_title = "Favorite color?"
user_name = "Bojack Horseman"

poll = Poll.find_or_create_by(title: poll_title)
user = User.find_or_create_by(name: user_name)
poll_options = poll.options

poll_options.each_with_index do |option, index|
  rank =  index + 1
  poll_option = PollOption.find_or_create_by(poll: poll, option: option)
  Rank.find_or_create_by(position: rank, poll_option: poll_option, user_id: user.id)
end

puts "There are now #{Rank.count} ranks"