# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
    User.create do |user|
        user.name = Faker::Name.name
        user.email = Faker::Internet.email
    end
end
#adds data to the db 100 times 
100.times do
    Micropost.create do |micropost|
        micropost.user = User.all.sample #associate a micropost to a user 
        micropost.content = Faker::Lorem.paragraph      
    end
end