# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


%w(tech blogging life love happiness pizza pasta vape-life pokemongo).each do |tag|
  Tag.create!(name: tag)
end


10.times do
  post = Post.create!(title: Faker::Name.title, body: Faker::Lorem.paragraph(3))

  rand(3..10).times do
    Comment.create!(body: Faker::Lorem.paragraph, post_id: post.id)
  end


  PostTag.create!(tag_id: Tag.pluck(:id).sample, post_id: post.id)
end
