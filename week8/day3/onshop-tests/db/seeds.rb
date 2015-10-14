
300.times do
  item = Item.new
  item.description = Faker::Lorem.paragraph(rand(3..7))
  item.name     = Faker::Commerce.product_name
  item.price    = rand(10000..100000)
  item.img_url  = Faker::Avatar.image
  item.quantity = rand(10..100)
  item.save!
end
