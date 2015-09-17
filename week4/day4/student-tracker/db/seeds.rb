
def random_gpa
  (0.0..4.0).step(0.2).to_a.map { |n| n.round(2) }.sample
end

%w(Rails Javascript Design iOS Python Java .NET).each do |course_name|
  Course.create(name: course_name)
end

Course.all.each do |course|
  5.times do
    Student.create({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      gpa: random_gpa,
      course_id: course.id
    })
  end
end
