# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times.each do
  user = User.create!(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    introduction:Faker::Lorem.paragraph,
    picture:("http://placehold.it/400x400")
    )

  user.flats.create!(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address: Faker::Address.street_address,
    zipcode: Faker::Address.zip_code,
    city: Faker::Address.city,
    price: Faker::Number.number(2),
    room_number: Faker::Number.digit,
    bed_number: Faker::Number.digit,
    guest_number: Faker::Number.digit
    )
end

