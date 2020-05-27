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

axel = User.create!({ email: 'axel@gmail.com', password: "axel1234", name: 'Axel'})
pierre = User.create!({ email: 'pierre.sarazin91@yahoo.fr', password: "123456", name: 'Pierre'})

remi = Coach.create!({ name: 'Rémi', specialty: body_pump })

body_combat = Lesson.create!({ name: 'body combat', appointment: DateTime.now.to_s(:db), coach: remi, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590505539/SweatR/lessons/body_combat_ka6nab.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})
yoga = Lesson.create!({ name: 'yoga', appointment: DateTime.now.to_s(:db), coach: remi, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509273/SweatR/lessons/yoga_y0hsr3.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})
caf = Lesson.create!({ name: 'CAF', appointment: DateTime.now.to_s(:db), coach: remi, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509359/SweatR/lessons/CAF_e2epn3.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})



puts "Finished !"
