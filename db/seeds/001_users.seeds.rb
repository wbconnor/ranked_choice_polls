users = [
  { name: 'Bojack Horseman', email: 'bojack@example.com' },
  { name: 'Diane Nguyen', email: 'diane@example.com' },
  { name: 'Mr. Peanutbutter', email: 'mrpb@example.com' },
  { name: 'Princess Carolyn', email: 'pc@example.com' },
  { name: 'Todd Chavez', email: 'todd@example.com' }
]

users.each do |user|
  unless User.find_by(email: user[:email])
    User.create(user)
  end
end

puts "There are now #{User.count} users."