# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Lesson.destroy_all
Coach.destroy_all
User.destroy_all
Specialty.destroy_all


puts "Creating database..."
body_pump = Specialty.create!({ name: 'Body Pump' })

axel = User.create!({ email: 'axel@gmail.com', password: "axel1234" })

remi = Coach.create!({ name: 'Rémi', specialty: body_pump })

friday_lesson = Lesson.create!({ name: 'lesson1', appointment: DateTime.now.to_s(:db), coach: remi, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26"})

puts "Finished !"
