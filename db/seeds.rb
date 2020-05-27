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

#specialty
bodycombat = Specialty.create!({ name: 'bodycombat' })
yoga = Specialty.create!({ name: 'yoga' })
caf = Specialty.create!({ name: 'caf' })
zumba = Specialty.create!({ name: 'zumba' })
meditation = Specialty.create!({ name: 'meditation' })
biking = Specialty.create!({ name: 'biking' })
handstand = Specialty.create!({ name: 'handstand' })
hiphop = Specialty.create!({ name: 'hiphop' })
bodyattack = Specialty.create!({ name: 'bodyattack' })
crosstraining = Specialty.create!({ name: 'crosstraining' })
kettelbell = Specialty.create!({ name: 'kettelbell' })
sixpack = Specialty.create!({ name: 'sixpack' })


#user
axel = User.create!({ email: 'axel@gmail.com', password: "axel1234", name: 'Axel'})
pierre = User.create!({ email: 'pierre.sarazin91@yahoo.fr', password: "123456", name: 'Pierre'})

#coach

remi = Coach.create!({ name: 'Rémi', specialty: bodycombat })
david = Coach.create!({ name: 'David', specialty: yoga })
lola = Coach.create!({ name: 'Lola', specialty: caf })
clem = Coach.create!({ name: 'Clem', specialty: zumba })
loic = Coach.create!({ name: 'loic', specialty: meditation })
jp = Coach.create!({ name: 'JP', specialty: biking })
michel = Coach.create!({ name: 'Michel', specialty: handstand })
coralie = Coach.create!({ name: 'Coralie', specialty: hiphop })
henri = Coach.create!({ name: 'Henri', specialty: bodyattack })
jerem = Coach.create!({ name: 'jerem', specialty: crosstraining })
germain = Coach.create!({ name: 'germain', specialty: kettelbell })
thanh = Coach.create!({ name: 'thanh', specialty: sixpack })



#cours
bodycombat = Lesson.create!({ name: 'body combat', appointment: DateTime.now.to_s(:db), coach: remi, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590505539/SweatR/lessons/body_combat_ka6nab.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})
yoga = Lesson.create!({ name: 'yoga', appointment: DateTime.now.to_s(:db), coach: david, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509273/SweatR/lessons/yoga_y0hsr3.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})
caf = Lesson.create!({ name: 'CAF', appointment: DateTime.now.to_s(:db), coach: lola, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509359/SweatR/lessons/CAF_e2epn3.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire."})
zumba = Lesson.create!({ name: 'zumba', appointment: DateTime.now.to_s(:db), coach: clem, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569596/SweatR/lessons/zumba_f2wb3f.jpg", lesson_description: "Une séance de Zumba dure entre 45 minutes et 1 heure : Elle commence par un échauffement, nécessaire à la préparation des muscles à l'exercice à venir. Puis le rythme devient de plus en plus intense et les styles musicaux s'enchaînent : merengue, salsa, samba, rumba."})
meditation = Lesson.create!({ name: 'meditation', appointment: DateTime.now.to_s(:db), coach: loic, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570065/SweatR/lessons/meditation_jnjnoe.jpg", lesson_description: "La pratique de la respiration et des postures de relaxation font partie du cours. Les mouvements libres et créatifs ajoutent la touche finale à cette pratique légère et amusante. Ce cours s'adresse aux débutants ainsi qu'aux personnes qui pratiquent déjà et désirent une approche plus douce."})
biking = Lesson.create!({ name: 'biking', appointment: DateTime.now.to_s(:db), coach: jp, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570291/SweatR/lessons/bike_uio2eg.jpg", lesson_description: "Le biking ou RPM est un cours de cyclisme indoor (en salle), qui consiste en l’utilisation de vélos fixes en salle, et en groupe, le tout en musique. Encadrés par un coach sportif, les exercices proposés sont basés sur la résistance cardio respiratoire et le travail musculaire (essentiellement le bas du corps). Les intensités sont variées afin de simuler un parcours de vélo précis."})
handstand = Lesson.create!({ name: 'handstand', appointment: DateTime.now.to_s(:db), coach: michel, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570250/SweatR/lessons/hand_stand_lunpch.jpg", lesson_description: "Se mettre sur les mains, les pieds au ciel et tenir l'équilibre ! Les anglophones ne se cassent pas la tête, ils appellent ça le handstand. C'est parti pour du gainage intense tout en amusant !"})
hiphop = Lesson.create!({ name: 'hiphop', appointment: DateTime.now.to_s(:db), coach: coralie, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570204/SweatR/lessons/hiphop_bne8rc.jpg", lesson_description: "Le cours commence par un échauffement collectif, puis la formation de 2 ateliers. 1er groupe niveau débutant, travail sur la musicalité, les mouvements de base Top-rock, Footwork, Freeze… 2eme groupe niveau intermédiaire, travail des figures circulaires appelées Powermoves.La fin du cours suivra par un créneau d’entrainement libre."})
bodyattack = Lesson.create!({ name: 'body attack', appointment: DateTime.now.to_s(:db), coach: henri, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569759/SweatR/lessons/body_attack_deqq5f.jpg", lesson_description: "Les cours collectifs de BodyAttack sont des entraînements cardios par excellence, inspirés de sports collectifs et athlétiques, dont l'objectif est de développer l'endurance et la force. ... Au programme, des mouvements simples (pliométrie, aérobic et course à pieds), pour un travail complet sur le haut et le bas du corps."})
crosstraining = Lesson.create!({ name: 'cross training', appointment: DateTime.now.to_s(:db), coach: jerem, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569635/SweatR/lessons/cross_training_mhvfil.jpg", lesson_description: "Les cours collectifs de Cross Training sont des entraînements complets, regroupant des mouvements cardio et renfo. ... Cette méthode est notamment utilisée par les sportifs qui ont besoin de combler une faiblesse musculaire et qui aimeraient passer à des entraînements à des exercices intensifiés."})
kettlebell = Lesson.create!({ name: 'kettlebell', appointment: DateTime.now.to_s(:db), coach: germain, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569721/SweatR/lessons/kettelbell_z0nxba.jpg", lesson_description: "La kettlebell a de nombreux avantages sur les autres équipements d'entraînement. D'une part, grâce à sa anse, elle permet des mouvements balistiques qui sont habituellement réservés aux athlètes de haut niveau. L'entraînement balistique consiste à effectuer une accélération puis relâcher (ou accompagner) un poids."})
sixpack = Lesson.create!({ name: 'sixpack', appointment: DateTime.now.to_s(:db), coach: clem, url: "https://www.youtube.com/embed/PcTKzV3-N70?start=26", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590571578/SweatR/lessons/six_pack_dqcn7a.jpg", lesson_description: "Six Pack est un cours collectif fonctionnel de 30 min. Post-échauffement, vous travaillerez le centre du corps en 2 blocs de travail de 4 ateliers (2 renforcements, 1 rotation, 1 gainage) répétés 2 fois, sans temps de repos. Chaque atelier dure 1mn. Un exercice cardio est compris dans le bloc de travail afin de solliciter l’ensemble du corps."})



puts "Finished !"
