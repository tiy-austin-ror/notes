require 'faker'

100.times do
  post = Post.new(title: "All About: " + Faker::Commerce.product_name, body: Faker::Lorem.paragraph, published: [true, false].sample)
  post.save
end
