Person.destroy_all
Game.destroy_all

10.times do |i|
  Person.create(name: Faker::Name.unique.name, district: rand(1..13))
  Game.create(name: Faker::Lorem.sentence, number: i + 1)
end