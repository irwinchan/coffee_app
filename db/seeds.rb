# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_digest: BCrypt::Password.create("password")
  )
end

CoffeeBean.create!(
  brand: "Tim Hortons",
  roast: "medium",
  name: "Columbian",
  origin: "Columbia",
  description_short: "Standard Timmy's"
)

100.times do
  Recipe.create!(
    user_id: (1..50).to_a.sample,
    technique: Faker::Lorem.paragraph,
    water_vol: (100..400).to_a.sample,
    water_temp: (70..100).to_a.sample,
    title: Faker::Lorem.sentence.titleize,
    coffee_amount: (5..15).to_a.sample,
    description: Faker::Lorem.sentence(3,true),
    coffee_bean_id: 1
  )
end

