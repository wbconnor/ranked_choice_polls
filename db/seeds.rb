Dir[File.join(Rails.root, 'db', 'seeds', '*.seeds.rb')].sort.each do |seed|
    load seed
end