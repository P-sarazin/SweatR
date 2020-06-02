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
remi = Coach.create!({ name: 'Rémi', specialty: hiit, bio:"Remi is a dedicated bodybuilding and physique master. His aesthetics are unprecedented! He is also a motivational speaker and a fulfilling coach who has helped so many on their journey to reaching their ideal physique.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655559/SweatR/coaches/prof_4_mxc0as.jpg",model_lesson:"If you want to get stronger, let's cut out all the nonsense that doesn't matter and get right to the heart of what really does. 1. Start Every Training Session with an Explosive Lift or Jump Variation. 2. Train Movements, but Don't Neglect Building the Musculature. 3. Train More. 4. Get Freaky Strong on Single-Leg Exercises. For sure it will work !" })
david = Coach.create!({ name: 'David', specialty: hiit, bio:"David is a software engineer and bodybuilder and also one of the best trainers out there – even celebs trust this guy with their fitness. His success stories are unbeatable, and all credited to his online personalised fitness plans.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655560/SweatR/coaches/prof_1_dcypsj.jpg",model_lesson:"If you want to get stronger, let's cut out all the nonsense that doesn't matter and get right to the heart of what really does. 1. Start Every Training Session with an Explosive Lift or Jump Variation. 2. Train Movements, but Don't Neglect Building the Musculature. 3. Train More. 4. Get Freaky Strong on Single-Leg Exercises. For sure it will work !" })
jp = Coach.create!({ name: 'JP', specialty: hiit, bio:"JP is a bodybuilding guru who is also an entrepreneur, motivational speaker, and cover model. From personalized training plans, to food plans, to supplement guides, to online support, he has got you covered on your fitness journey." ,avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655560/SweatR/coaches/prof_6_kulmre.jpg", model_lesson:"If you want to get stronger, let's cut out all the nonsense that doesn't matter and get right to the heart of what really does. 1. Start Every Training Session with an Explosive Lift or Jump Variation. 2. Train Movements, but Don't Neglect Building the Musculature. 3. Train More. 4. Get Freaky Strong on Single-Leg Exercises. For sure it will work !"})
coach_hiit = [remi, david, jp]

lola = Coach.create!({ name: 'Lola', specialty: dance, bio:"Lola is a professional dancer with a side passion for fitness. She is worth a follow for daily fitness and nutrition motivation, as well as specific workouts to get her ripped physique. She has proven that any goal is attainable if you chase after it.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655559/SweatR/coaches/prof_5_yapvl7.jpg", model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss"})
clem = Coach.create!({ name: 'Clem', specialty: dance, bio:"Clem's dedication to her clients makes her the trust-worthiest fitness trainer and coach we’ve seen yet. Her enjoyable and effective workouts are what has helped her and so many others get and also stay in great shape for the long run.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590679576/SweatR/coaches/prof_9_edemtt.jpg",  model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss" })
coach_dance = [lola, clem]

coralie = Coach.create!({ name: 'Coralie', specialty: relaxation, bio: "Coralie is a qualified Yoga Alliance teacher which passion is to make people happier and healthier by introducing them to meditation, yoga and healthy nutrition,as well as training advice and instructions to healthy recipes.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655559/SweatR/coaches/prof_8_lbhobx.jpg",  model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss"})
loic = Coach.create!({ name: 'loic', specialty: relaxation, bio:"Loic has programs for everyone, regardless of gender, size, training goals, or targets. From personalized training plans, to food plans, to supplement guides, to online support, he has got you covered on your fitness journey." , avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655559/SweatR/coaches/prof_7_gsz0pf.jpg",  model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss"})
michelle = Coach.create!({ name: 'Michelle', specialty: relaxation, bio:"Michelle truly understands where you are coming from, her attention to detail in the books has transitioned flawlessly into the fitness room. If you are looking to clean up your diet and develop to that next level, then she is the right person for you." , avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590679576/SweatR/coaches/prof_10_jrnuno.jpg",  model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss"})
coach_relaxation = [coralie, loic, michelle]

jerem = Coach.create!({ name: 'Jérem', specialty: specifictraining, bio:"Jerem's in-person and online trainings are game changing and can really help you optimize part of your performance. He is also a fulfilling coach, who is here to make your life better, like the many ones he has helped on their journey.", avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1590655559/SweatR/coaches/prof_2_mjyhoq.jpg", model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss" })
thanh = Coach.create!({ name: 'thanh', specialty: specifictraining, bio: "For thanh empowering women and helping them transform their minds and bodies is her biggest goal. With over two decades of experience in the fitness industry, she has accomplished quite a bit, and helped many reached their fitness goals.",avatar_picture:"https://res.cloudinary.com/dlevfhxyn/image/upload/v1590655559/SweatR/coaches/prof_3_asnbe1.jpg",  model_lesson:"The general format for every workout is as follows: Warm-Up, Activation Movement For Speed And Mobility, Prime Movement For Muscle Strength, Assistance Work For Muscle Shape, Conditioning For Cardiovascular Health And Fat Loss"})
coach_specifictraining = [jerem, thanh]


puts "Creating lessons..."

#lessons
4.times do
  #hiit
  bodycombat = Lesson.create!({ name: 'body combat', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/xbABGepKT2o", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590505539/SweatR/lessons/body_combat_ka6nab.jpg", lesson_description: "Go for an intensive 1 hour body combat course Body Combat, the discipline that sculpts an athletic body.Created in the 90s by Les Mills, Body Combat is a mix between an intensive cardio course and movements borrowed from high-level martial arts such as karate, boxing or taekwendo. In front of us, no opponent.", average_calories: 800})
  bodyattack = Lesson.create!({ name: 'body attack', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/0Q8LYWbH-Qw", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569759/SweatR/lessons/body_attack_deqq5f.jpg", lesson_description: "BodyAttack group lessons are cardio training par excellence, inspired by collective and athletic sports, the objective of which is to develop endurance and strength. ... On the program, simple movements (plyometrics, aerobics and running), for complete work on the upper and lower body.", average_calories: 800})
  crosstraining = Lesson.create!({ name: 'cross training', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_hiit.sample, url: "https://www.youtube.com/embed/IBuwNheltdI", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569635/SweatR/lessons/cross_training_mhvfil.jpg", lesson_description: "Group Cross Training courses are comprehensive training, including cardio and strengthening movements. ... This method is particularly used by athletes who need to make up for muscle weakness and who would like to switch to training for intensified exercises.", average_calories: 1000})

  #dance
  bodybarre = Lesson.create!({ name: 'CAF', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/3bxihqPKF08", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509359/SweatR/lessons/CAF_e2epn3.jpg", lesson_description: "Bodybarre group lessons are inspired by classical dance and consist of specific work like dancers, all in music! A session lasts 45 minutes and burns approximately 250 calories. It is composed of exercises punctuated by music and without equipment.", average_calories: 600})
  zumba = Lesson.create!({ name: 'zumba', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/1N-n1KEivbo", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569596/SweatR/lessons/zumba_f2wb3f.jpg", lesson_description: "A Zumba session lasts between 45 minutes and 1 hour: It begins with a warm-up, necessary to prepare the muscles for the upcoming exercise. Then the rhythm becomes more and more intense and the musical styles are linked: merengue, salsa, samba, rumba.", average_calories: 800})
  hiphop = Lesson.create!({ name: 'hiphop', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_dance.sample, url: "https://www.youtube.com/embed/ZWk19OVon2k", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570204/SweatR/lessons/hiphop_bne8rc.jpg", lesson_description: "The course begins with a group warm-up, then the training of 2 workshops. 1st group beginner level, work on musicality, basic movements Top-rock, Footwork, Freeze… 2nd group intermediate level, work of circular figures called Powermoves. The end of the course will follow by a free training niche.", average_calories: 600})


  #relaxation
  handstand = Lesson.create!({ name: 'handstand', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/KNC5lkoE2Fs", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570250/SweatR/lessons/hand_stand_lunpch.jpg", lesson_description: "Put yourself on your hands, feet in the air and keep your balance! English speakers do not break their heads, they call it the handstand. Let's go for intense sheathing while having fun!", average_calories: 800})
  meditation = Lesson.create!({ name: 'meditation', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/4pLUleLdwY4", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570065/SweatR/lessons/meditation_jnjnoe.jpg", lesson_description: "The practice of breathing and relaxation postures are part of the course. The free and creative movements add the final touch to this light and fun practice. This course is aimed at beginners as well as people who are already practicing and want a softer approach.", average_calories: 200})
  yoga = Lesson.create!({ name: 'yoga', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_relaxation.sample, url: "https://www.youtube.com/embed/kJjfle7CEwI", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590509273/SweatR/lessons/yoga_y0hsr3.jpg", lesson_description: "Yoga is the practice of a set of postures and breathing exercises which aims to bring physical and mental well-being. this ancient art of living as it is explained in the texts is revealed as an initiation path that transcends physical discipline. But this complete and demanding art allows you to sculpt your whole body gently.", average_calories: 500})

  #specific training
  biking = Lesson.create!({ name: 'biking', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/4Hl1WAGKjMc", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590570291/SweatR/lessons/bike_uio2eg.jpg", lesson_description: "Biking or RPM is an indoor (indoor) cycling course, which consists of the use of stationary bikes indoors, and in groups, all with music. Supervised by a sports coach, the exercises offered are based on cardio respiratory resistance and muscular work (essentially the lower body). The intensities are varied in order to simulate a precise cycling route.", average_calories: 900})
  kettlebell = Lesson.create!({ name: 'kettlebell', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/k20aYCK1Ru4", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590569721/SweatR/lessons/kettelbell_z0nxba.jpg", lesson_description: "The kettlebell has many advantages over other training equipment. On the one hand, thanks to its handle, it allows ballistic movements which are usually reserved for high performance athletes. Ballistic training consists of accelerating and then releasing (or accompanying) a weight.", average_calories: 1100})
  sixpack = Lesson.create!({ name: 'sixpack', appointment: Time.at((6.days.ago.to_i..6.days.from_now.to_i).to_a.sample), coach: coach_specifictraining.sample, url: "https://www.youtube.com/embed/Q-vuR4PJh2c&t=548s", lesson_picture: "https://res.cloudinary.com/dlevfhxyn/image/upload/v1590571578/SweatR/lessons/six_pack_dqcn7a.jpg", lesson_description: "Six Pack is a functional group lesson of 30 min. Post-heating, you will work the center of the body in 2 working blocks from 4 workshops (2 reinforcements, 1 rotation, 1 sheathing) repeated 2 times, without rest time. Each workshop lasts 1 minute. A cardio exercise is included in the work block to exercise the whole body.", average_calories: 900})
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
