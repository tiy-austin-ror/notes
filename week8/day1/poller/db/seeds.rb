# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

u = User.create!(name: "Foo Bar", email: "user@example.com", password: "password")

3.times do
  poll = u.polls.create(name: "My Poll")

  rand(5..10).times do
    question = poll.questions.create(body: "Do you believe the thing?")

    question.answers.create(rating: rand(1..5)) if (rand > 0.5)
  end
end
