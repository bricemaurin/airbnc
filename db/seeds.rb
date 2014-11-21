# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times.each do |i|
  user = User.create!(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: "user#{i}@gmail.com",
    password: "password#{i}",
    introduction:Faker::Lorem.paragraph,
    picture:Faker::Avatar.image
  )

  user.flats.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address: Faker::Address.street_address,
    price: Faker::Number.number(2),
    room_number: (1..4).to_a.sample,
    bed_number: (1..4).to_a.sample,
    guest_number: (1..4).to_a.sample
  )
end

