# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u = User.new
u.first_name = 'justin'
u.last_name  = 'herrick'
u.save!

a = User.new
a.first_name = 'justin'
a.last_name  = 'herrick'
a.save!

b = User.new
b.first_name = 'justin'
b.last_name  = 'herrick'
b.save!
