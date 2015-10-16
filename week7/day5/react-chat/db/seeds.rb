rooms = [
  Room.create!({ name: 'general' }),
  Room.create!({ name: 'random' })
]

users = %w(reactbot justin aaron abby sam travis karly).map do |name|
  u = User.new(username: name)
  u.password = 'password'
  u.save!
  u
end

10.times do
  Message.create!({
    user_id: users.sample.id,
    room_id: rooms.sample.id,
    body: 'This is a test!'
  })
end
