# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

words = %w(build ruby bundler errors ughh rake what is going on how works linenumber stacktrace sleep coffee caffeine chris shhhhhh)

100.times do |n|
  message = 5.times.map { words.sample }.join(' ')
  Tweet.create({ message: message })
end
