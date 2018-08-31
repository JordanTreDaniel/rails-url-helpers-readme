# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.all.destroy_all
string = 'abcdefg'
counter = 0
string.each_char do |char|
    counter += 1
    char = Student.create(first_name: counter.to_s, last_name: (counter + 5).to_s)
end

Post.all.destroy_all
nouns = ["forest", "tree", "flower", "sky", "grass", "mountain"]
adjectives = ["happy", "rotating", "red", "fast", "elastic", "smily", "unbelievable", "infinite"]
l_i_s = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
5.times do 
    Post.create(title: "#{nouns[Random.rand(5)]} #{adjectives[Random.rand(7)]}", description: l_i_s)
end

