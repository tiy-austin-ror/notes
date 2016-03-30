# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2.times do
  school = School.create!(name: Faker::Company.name + " School",
                          motto: Faker::Company.catch_phrase,
                          location: Faker::Address.city)

  rand(20..50).times do
    Student.create!(name: Faker::Name.name, age: rand(18..188), school_id: school.id)
  end

  rand(1..8).times do
    teacher = Teacher.create!(name: Faker::Name.name,
                              age: rand(19..99),
                              school_id: school.id)

    rand(2..5).times do
      course = Course.create!(name: Faker::Company.buzzword + " 101",
                              duration: rand(2..24),
                              teacher_id: teacher.id)

      rand(5..50).times do
        # We don't want students enrolled in a school they don't belong to
        student_id = Student.where(school_id: school.id).pluck(:id).sample
        Enrollment.create(course_id: course.id, student_id: student_id)
      end
    end
  end
end
