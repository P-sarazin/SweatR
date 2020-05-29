# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Lesson.destroy_all
Coach.destroy_all
User.destroy_all
Specialty.destroy_all

puts "Creating specialties..."

#specialties
#HIIT/Crossfit (High Intensity Interval Training)
hiit = Specialty.create!({ name: 'High Intensity Interval Training' })

#zones localisées
specifictraining = Specialty.create!({ name: 'Specific Training' })

#Dance (fitness via la danse)
dance = Specialty.create!({ name: 'Dance' })

#Streching/Relaxation/
relaxation = Specialty.create!({ name: 'Relaxation' })

puts "Creating users..."

#user
axel = User.create!(name: 'Axel', email: "axel@gmail.com", password: "Axel!!", avatar_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1589893760/DAMIDHOME/Avatar/axel.png")
josephine = User.create!(name: 'Joséphine', email: "josephine@gmail.com", password: "Josephine!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589896478/DAMIDHOME/Avatar/josephine.png")
pierre = User.create!(name: 'Pierre', email: "pierre@gmail.com", password: "Pierre!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589893760/DAMIDHOME/Avatar/pierre.png")
marie = User.create!(name: 'Marie', email: "marie@gmail.com", password: "Marie!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589893760/DAMIDHOME/Avatar/marie.png")
stan = User.create!(name: 'Stan', email: "stan@gmail.com", password: "Stan!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589980952/DAMIDHOME/Avatar/stan.png")
jeanne = User.create!(name: 'Jeanne', email: "jeanne@gmail.com", password: "Jeanne!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589981742/DAMIDHOME/Avatar/jeanne.png")
claire = User.create!(name: 'Claire', email: "claire@gmail.com", password: "Claire!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589980951/DAMIDHOME/Avatar/claire.png")
laurence = User.create!(name: 'Laurence', email: "laurence@gmail.com", password: "Laurence!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1589980952/DAMIDHOME/Avatar/laurence.png")
alexandra = User.create!(name: 'Alexandra', email: "alexandra@gmail.com", password: "Alexandra!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590156234/DAMIDHOME/Avatar/alexandra.png")
emile = User.create!(name: 'Emile', email: "emile@gmail.com", password: "Emile!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590156235/DAMIDHOME/Avatar/emile.png")
coralie = User.create!(name: 'Coralie', email: "coralie@gmail.com", password: "Coralie!!", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590156249/DAMIDHOME/Avatar/coralie.png")


puts "Creating coaches..."

#coach
remi = Coach.create!({ name: 'Rémi', specialty: hiit, bio:"Remi is a dedicated bodybuilding and physique master. His aesthetics are unprecedented! He is also a motivational speaker and a fulfilling coach who has helped so many on their journey to reaching their ideal physique.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_4_mxc0as.jpg" })
david = Coach.create!({ name: 'David', specialty: hiit, bio:"David is a software engineer and bodybuilder and also one of the best trainers out there – even celebs trust this guy with their fitness. His success stories are unbeatable, and all credited to his online personalised fitness plans.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655560/SweatR/coaches/prof_1_dcypsj.jpg" })
jp = Coach.create!({ name: 'JP', specialty: hiit, bio:"JP is a bodybuilding guru who is also an entrepreneur, motivational speaker, and cover model. From personalized training plans, to food plans, to supplement guides, to online support, he has got you covered on your fitness journey." ,avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655560/SweatR/coaches/prof_6_kulmre.jpg"})
coach_hiit = [remi, david, jp]

lola = Coach.create!({ name: 'Lola', specialty: dance, bio:"Lola is a professional dancer with a side passion for fitness. She is worth a follow for daily fitness and nutrition motivation, as well as specific workouts to get her ripped physique. She has proven that any goal is attainable if you chase after it.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_5_yapvl7.jpg"})
clem = Coach.create!({ name: 'Clem', specialty: dance, bio:"Clem's dedication to her clients makes her the trust-worthiest fitness trainer and coach we’ve seen yet. Her enjoyable and effective workouts are what has helped her and so many others get and also stay in great shape for the long run.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590679576/SweatR/coaches/prof_9_edemtt.jpg" })
coach_dance = [lola, clem]

coralie = Coach.create!({ name: 'Coralie', specialty: relaxation, bio: "Coralie is a qualified Yoga Alliance teacher which passion is to make people happier and healthier by introducing them to meditation, yoga and healthy nutrition,as well as training advice and instructions to healthy recipes.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_8_lbhobx.jpg"})
loic = Coach.create!({ name: 'loic', specialty: relaxation, bio:"Loic has programs for everyone, regardless of gender, size, training goals, or targets. From personalized training plans, to food plans, to supplement guides, to online support, he has got you covered on your fitness journey." , avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_7_gsz0pf.jpg"})
michelle = Coach.create!({ name: 'Michelle', specialty: relaxation, bio:"Michelle truly understands where you are coming from, her attention to detail in the books has transitioned flawlessly into the fitness room. If you are looking to clean up your diet and develop to that next level, then she is the right person for you." , avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590679576/SweatR/coaches/prof_10_jrnuno.jpg"})
coach_relaxation = [coralie, loic, michelle]

jerem = Coach.create!({ name: 'Jérem', specialty: specifictraining, bio:"Jerem's in-person and online trainings are game changing and can really help you optimize part of your performance. He is also a fulfilling coach, who is here to make your life better, like the many ones he has helped on their journey.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_2_mjyhoq.jpg" })
thanh = Coach.create!({ name: 'thanh', specialty: specifictraining, bio: "For thanh empowering women and helping them transform their minds and bodies is her biggest goal. With over two decades of experience in the fitness industry, she has accomplished quite a bit, and helped many reached their fitness goals.",avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_3_asnbe1.jpg"})
coach_specifictraining = [jerem, thanh]


puts "Creating lessons..."

#lessons
4.times do
  #hiit
  bodycombat = Lesson.create!({ name: 'body combat', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/xbABGepKT2o", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590505539/SweatR/lessons/body_combat_ka6nab.jpg", lesson_description: "Partez pour un cours intensif d'1h de body combat Le Body Combat, la discipline qui nous sculpte un corps d'athlète.Créée dans les années 90 par Les Mills, le Body Combat mêle est un mix entre un cours intensif de cardio et des mouvements empruntés aux arts martiaux de haut niveau tels que le karaté, la boxe ou le taekwendo. En face de nous, aucun adversaire.", average_calories: 800})
  bodyattack = Lesson.create!({ name: 'body attack', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/0Q8LYWbH-Qw", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569759/SweatR/lessons/body_attack_deqq5f.jpg", lesson_description: "Les cours collectifs de BodyAttack sont des entraînements cardios par excellence, inspirés de sports collectifs et athlétiques, dont l'objectif est de développer l'endurance et la force. ... Au programme, des mouvements simples (pliométrie, aérobic et course à pieds), pour un travail complet sur le haut et le bas du corps.", average_calories: 800})
  crosstraining = Lesson.create!({ name: 'cross training', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/IBuwNheltdI", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569635/SweatR/lessons/cross_training_mhvfil.jpg", lesson_description: "Les cours collectifs de Cross Training sont des entraînements complets, regroupant des mouvements cardio et renfo. ... Cette méthode est notamment utilisée par les sportifs qui ont besoin de combler une faiblesse musculaire et qui aimeraient passer à des entraînements à des exercices intensifiés.", average_calories: 1000})

  #dance
  bodybarre = Lesson.create!({ name: 'CAF', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/3bxihqPKF08", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509359/SweatR/lessons/CAF_e2epn3.jpg", lesson_description: "Les cours collectifs de Bodybarre sont inspirés de la danse classique et consistent en un travail spécifique comme les danseueses, le tout en musique ! Une séance dure 45 minutes et permet de brûler environ 250 calories. Elle est composée d'exercices rythmées par la musique et sans matériel.", average_calories: 600})
  zumba = Lesson.create!({ name: 'zumba', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/1N-n1KEivbo", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569596/SweatR/lessons/zumba_f2wb3f.jpg", lesson_description: "Une séance de Zumba dure entre 45 minutes et 1 heure : Elle commence par un échauffement, nécessaire à la préparation des muscles à l'exercice à venir. Puis le rythme devient de plus en plus intense et les styles musicaux s'enchaînent : merengue, salsa, samba, rumba.", average_calories: 800})
  hiphop = Lesson.create!({ name: 'hiphop', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/ZWk19OVon2k", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570204/SweatR/lessons/hiphop_bne8rc.jpg", lesson_description: "Le cours commence par un échauffement collectif, puis la formation de 2 ateliers. 1er groupe niveau débutant, travail sur la musicalité, les mouvements de base Top-rock, Footwork, Freeze… 2eme groupe niveau intermédiaire, travail des figures circulaires appelées Powermoves.La fin du cours suivra par un créneau d’entrainement libre.", average_calories: 600})


  #relaxation
  handstand = Lesson.create!({ name: 'handstand', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/KNC5lkoE2Fs", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570250/SweatR/lessons/hand_stand_lunpch.jpg", lesson_description: "Se mettre sur les mains, les pieds au ciel et tenir l'équilibre ! Les anglophones ne se cassent pas la tête, ils appellent ça le handstand. C'est parti pour du gainage intense tout en amusant !", average_calories: 800})
  meditation = Lesson.create!({ name: 'meditation', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/4pLUleLdwY4", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570065/SweatR/lessons/meditation_jnjnoe.jpg", lesson_description: "La pratique de la respiration et des postures de relaxation font partie du cours. Les mouvements libres et créatifs ajoutent la touche finale à cette pratique légère et amusante. Ce cours s'adresse aux débutants ainsi qu'aux personnes qui pratiquent déjà et désirent une approche plus douce.", average_calories: 200})
  yoga = Lesson.create!({ name: 'yoga', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/kJjfle7CEwI", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509273/SweatR/lessons/yoga_y0hsr3.jpg", lesson_description: "Le yoga est la pratique d'un ensemble de postures et d 'exercices de respiration qui vise à apporter un bien être physique et mental. cet ancien art de vivre tel qu'il est expliqué dans les textes se révèle comme un chemin initiatique qui transcende la discipline physique. Mais cet art complet et exigeant permet de se sculpter tout le corps en douceur.", average_calories: 500})

  #specific training
  biking = Lesson.create!({ name: 'biking', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/4Hl1WAGKjMc", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570291/SweatR/lessons/bike_uio2eg.jpg", lesson_description: "Le biking ou RPM est un cours de cyclisme indoor (en salle), qui consiste en l’utilisation de vélos fixes en salle, et en groupe, le tout en musique. Encadrés par un coach sportif, les exercices proposés sont basés sur la résistance cardio respiratoire et le travail musculaire (essentiellement le bas du corps). Les intensités sont variées afin de simuler un parcours de vélo précis.", average_calories: 900})
  kettlebell = Lesson.create!({ name: 'kettlebell', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/k20aYCK1Ru4", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569721/SweatR/lessons/kettelbell_z0nxba.jpg", lesson_description: "La kettlebell a de nombreux avantages sur les autres équipements d'entraînement. D'une part, grâce à sa anse, elle permet des mouvements balistiques qui sont habituellement réservés aux athlètes de haut niveau. L'entraînement balistique consiste à effectuer une accélération puis relâcher (ou accompagner) un poids.", average_calories: 1100})
  sixpack = Lesson.create!({ name: 'sixpack', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/Q-vuR4PJh2c&t=548s", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590571578/SweatR/lessons/six_pack_dqcn7a.jpg", lesson_description: "Six Pack est un cours collectif fonctionnel de 30 min. Post-échauffement, vous travaillerez le centre du corps en 2 blocs de travail de 4 ateliers (2 renforcements, 1 rotation, 1 gainage) répétés 2 fois, sans temps de repos. Chaque atelier dure 1mn. Un exercice cardio est compris dans le bloc de travail afin de solliciter l’ensemble du corps.", average_calories: 900})
end

puts "Creating bookings..."

#bookings
User.all.each do |user|
  5.times do
    lesson = Lesson.all.sample
    Booking.create!({ review_text: "", review_rating: nil, lesson: lesson, user: user })
  end
end

puts "Finished !"
