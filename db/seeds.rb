# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"
CareerPosition.destroy_all
JobTitle.destroy_all
Company.destroy_all
Meeting.destroy_all
Activity.destroy_all
Availability.destroy_all
ProfessionalInterest.destroy_all
Skill.destroy_all
User.destroy_all


puts "Creating Users"

brian = User.create!(
  first_name: 'Brian',
  last_name: 'Daly',
  email: 'brian.daly@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552535552/brian.jpg',
  address: '16 Church St, South Melbourne',
  radius: 500,
  professional_goal: '',
  bio: 'Colorado love, Australia living, Adventure enthusiast. The next experience is right around the corner.'
)

winson = User.create!(
  first_name: 'Winson',
  last_name: 'Tan',
  email: 'winson.tan@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552291668/winson.jpg',
  address: '120 Princes St, Port Melbourne',
  radius: 230,
  professional_goal: '',
  bio: 'Data scientist and analyst with experience in various industries including consulting, banking and SaaS. Passionate about solving real problems and creating value by leveraging the latest technologies.'
)

paal = User.create!(
  first_name: 'Paal',
  last_name: 'Ringstad',
  email: 'paal.ringstad@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552292076/paal.jpg',
  address: '128 Farrell St, Port Melbourne',
  radius: 300,
  professional_goal: '',
  bio: 'Passionate about education and building projects, I launched Le Wagon Coding Bootcamp in Australia. Le Wagon believes that education has to be redefined, by providing a whole new type of education, based on collaboration and self-learning, in a startup-style environment.'
)

fritz = User.create!(
  first_name: 'Fritz',
  last_name: 'Shack',
  email: 'fritz.shack@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552291398/fritz.png',
  address: '396 Clarendon St, South Melbourne',
  radius: 400,
  professional_goal: '',
  bio: 'Recently graduated from WHU in Germany with a Bachelor of Science in International Business. Gathered experience with internships in investment banking, private equity as well as marketing.'
)

dale = User.create!(
  first_name: 'Dale',
  last_name: 'Hindle',
  email: 'dale.hindle@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552291395/dale.jpg',
  address: '122 Albert St, Port Melbourne',
  radius: 123.7,
  professional_goal: '',
  bio: 'Chemical Engineer looking to compliment my skills by learning some web development.'
)

damon = User.create!(
  first_name: 'Damon',
  last_name: 'Ross',
  email: 'damon.ross@mail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552292621/damon.jpg',
  address: '39 Swanston St, Melbourne',
  radius: 253.7,
  professional_goal: '',
  bio: "Worked in product management and now looking to learn more about technical development and building  cool products while travelling around"
)

ben = User.create!(
  first_name: 'Ben',
  last_name: 'Linder',
  email: 'ben.linder@mail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552291400/ben.jpg',
  address: '248 Esplanade East, Port Melbourne',
  radius: 13.7,
  professional_goal: '',
  bio: "Bachelor degree in management and marketing. Floated through life with zero idea what I wanted to be when I grew up but have found myself in the web-development and teaching space."
)

marco = User.create(
  first_name: "Marco",
  last_name: "Materazzi",
  email: 'marco.materazzi@gmail.com',
  password: '123456',
  photo: "https://res.cloudinary.com/giugoe/image/upload/v1552293209/marco.jpg",
  address: "9/271 William St, Melbourne",
  radius: 5.0,
  professional_goal: '',
  bio: 'Accomplished designer at Stern, with 20 years’ experience in the automobile markets')

filippo = User.create(
  first_name: "Filippo",
  last_name: "Faguzzi",
  email: 'filippo.faguzzi@gmail.com',
  password: '123456',
  photo: "https://res.cloudinary.com/giugoe/image/upload/v1552543642/filippo_F.jpg",
  address: "177 Cecil St, South Melbourne'",
  radius: 2.4,
  professional_goal: '',
  bio: 'An industry expert with more than 20 years of successful experience in full life cycle Procurement and Business Development.')

hannah = User.create!(
  first_name: 'Hannah',
  last_name: "Fuzzi",
  email: 'hannah.fuzzi@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552543642/hannah_f.jpg',
  address: '16 Morris St, South Melbourne',
  radius: 900,
  professional_goal: '',
  bio: 'I love meeting people and healthcare. I have spent an incredible part of my life in the service of others and the betterment of their health!'
)

robert = User.create!(
  first_name: 'Robert',
  last_name: 'Pfeiffer',
  email: 'robert.pfeiffer@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552543642/robert_p.jpg',
  address: '117 Farrell St, Port Melbourne',
  radius: 700,
  professional_goal: '',
  bio: 'When I was younger - I found out that everyone should have equal opportunities! This largely explains why I pursued law and I have found real fulfillment in this career path.'
)

hans = User.create!(
  first_name: 'Hans',
  last_name: 'Von Der Heyde',
  email: 'hans.heyde@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552543643/hans_v.jpg',
  address: '90 Collins St, Melbourne',
  radius: 700,
  professional_goal: '',
  bio: 'User journey and experience mixed with my passion for law and justice - has lead to me finding myself at its intersection. I am involved in the product development and management of tools used for law firms and other related fields.'
)

valerie = User.create!(
  first_name: 'Valerie',
  last_name: 'Schraauwers',
  email: 'valerie.schraauwers@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552295354/valerie.png',
  address: '151 Beach St, Port Melbourne',
  radius: 800,
  professional_goal:'',
  bio: 'After 3.5 great years of working as a Country Manager for Green Claim, I felt it was time for a change. I flew across the ocean to do Le Wagon’s Full Stack Coding Bootcamp in Bali, which equipped me with a new set of skills. I am excited to further develop these skills and to combine them with my previous work experience.'
)

felix = User.create!(
  first_name: 'Felix',
  last_name: 'Herrmann',
  email: 'felix.herrmann@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304255/felix.jpg',
  address: '72 Moubray St, South Melbourne',
  radius: 650,
  professional_goal: '',
  bio: 'Education is the area that I am greatly passionate about. Apart from being a high-school teacher, I would say that I am a coffee connoisseur - definitely need 5 coffees a day - so might as well have one with you!'
)

eman = User.create!(
  first_name: 'Eman',
  last_name: 'Watson',
  email: 'emanw@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552535563/eman.jpg',
  address: '37A Bray St, Plympton Park SA 5038',
  radius: 550,
  professional_goal: '',
  bio: 'I am a business graduate with a focus on International Management. Recently, I have been researching and trying to understand the functionality of Agile in the business environment and after great amounts of research, tests and trials - I am proud to say I have significant depth and knowledge on the subject matter!'
)

adora = User.create!(
  first_name: 'Adora',
  last_name: 'Gao',
  email: 'adora.g@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552291674/adora.jpg',
  address: '14 The Bend, Port Melbourne',
  radius: 300,
  professional_goal: '',
  bio: 'I work in marketing for a software company and am now learning to code part-time in the hopes to expand my skillsets!'
)

alex = User.create!(
  first_name: 'Alex',
  last_name: 'Vassiliou',
  email: 'alex.vassiliou@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304849/alex.jpg',
  address: '225 Abbotsford St, North Melbourne',
  radius: 700,
  professional_goal: '',
  bio: 'Worked in business development for a solar company. After being part a healthy and truly functional team, I hope to ascend into managament and more leadership roles'
)

rutger = User.create!(
  first_name: 'Rutger',
  last_name: 'Swirski',
  email: 'rutger.swirski@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304285/rutger.jpg',
  address: '463 Victoria St, West Melbourne',
  radius: 750,
  professional_goal: '',
  bio: 'Started coding when I was 13, I have always wanted to become a web developer. This is the area I hope to expand into the future!'
)

chris = User.create!(
  first_name: 'Chris',
  last_name: 'Ward',
  email: 'chris.ward@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304608/chris.jpg',
  address: '149 Alfred St, North Melbourne',
  radius: 650,
  professional_goal: '',
  bio: 'I’m a skilled digital marketer with experience in social media (Facebook, Instagram, Twitter, Snapchat), EDM, SEO and web design. I have a bachelor of Commerce from the University of Melbourne, majoring in Marketing and Finance, which has allowed me to be data driven, customer-focused and motivated to create meaningful results. My campaigns have grown reach, followership, impressions and most importantly, sales!'
)

laura = User.create!(
  first_name: 'Laura',
  last_name: 'Crawley',
  email: 'crawley.l@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552535862/laura.jpg',
  address: '12 Hotham St, South Melbourne',
  radius: 450,
  professional_goal: '',
  bio: 'I was in the sector of management consulting previously, however, now I recognise that my true calling is to build value-based businesses. Currently, I am looking for oppotunities to connect with people that are interested in entreprenuership and business development.'
)

puts "Created #{User.all.length} users"

puts "Creating some Activities!"

brian_running = Activity.create!(
  user_id: brian.id,
  symbol: "fas fa-running",
  description: 'go running'
)

brian_lunch = Activity.create!(
  user_id: brian.id,
  symbol: "fas fa-utensils",
  description: 'have lunch'
)

winson_coffee = Activity.create(
  user_id: winson.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

winson_jogging = Activity.create(
  user_id: winson.id,
  symbol: "fas fa-walking",
  description: 'go jogging'
)

paal_bubbles = Activity.create(
  user_id: paal.id,
  symbol: "fas fa-comments",
  description: 'have a chat'
)

paal_swimming = Activity.create!(
  user_id: paal.id,
  symbol: "fas fa-swimmer",
  description: 'go swimming'
)

fritz_beer = Activity.create(
  user_id: fritz.id,
  symbol: "fas fa-beer",
  description: 'drink a beer'
)

fritz_coffee = Activity.create(
  user_id: fritz.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

dale_dog = Activity.create(
  user_id: dale.id,
  symbol: "fas fa-walking",
  description: 'walk the dog'
)

dale_coffee = Activity.create(
  user_id: dale.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

damon_beer = Activity.create(
  user_id: damon.id,
  symbol: "fas fa-beer",
  description: 'drink a beer'
)

damon_running = Activity.create(
  user_id: damon.id,
  symbol: "fas fa-running",
  description: 'go running'
)

ben_jogging = Activity.create(
  user_id: ben.id,
  symbol: "fas fa-walking",
  description: 'go jogging'
)

ben_coffee = Activity.create(
  user_id: ben.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

marco_jogging = Activity.create(
  user_id: marco.id,
  symbol: "fas fa-walking",
  description: 'go jogging'
)

marco_dog = Activity.create(
  user_id: marco.id,
  symbol: "fas fa-dog",
  description: 'walk the dog'
)

filippo_running = Activity.create(
  user_id: filippo.id,
  symbol: "fas fa-running",
  description: 'go running'
)

filippo_walkthedog = Activity.create(
  user_id: filippo.id,
  symbol: "fas fa-dog",
  description: 'walk the dog'
)

hannah_coffee = Activity.create(
  user_id: hannah.id,
  symbol: "fas fa-coffee",
  description: 'have a coffe'
)

hannah_bubbles = Activity.create(
  user_id: hannah.id,
  symbol: "fas fa-comments",
  description: 'have a chat'
)

robert_coffee = Activity.create(
  user_id: robert.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

robert_lunch = Activity.create!(
  user_id: robert.id,
  symbol: "fas fa-utensils",
  description: 'have lunch'
)

hans_coffee = Activity.create(
  user_id: hans.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

hans_swimming = Activity.create!(
  user_id: hans.id,
  symbol: "fas fa-swimmer",
  description: 'go swimming'
)

valerie_coffee = Activity.create(
  user_id: valerie.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

valerie_swimming = Activity.create(
  user_id: valerie.id,
  symbol: "fas fa-swimmer",
  description: 'go swimming'
)


felix_bubbles = Activity.create(
  user_id: felix.id,
  symbol: "fas fa-comments",
  description: 'have a chat'
)

felix_lunch = Activity.create(
  user_id: felix.id,
  symbol: "fas fa-utensils",
  description: 'have lunch'
)

eman_lunch = Activity.create!(
  user_id: eman.id,
  symbol: "fas fa-utensils",
  description: 'have lunch'
)

eman_coffee = Activity.create(
  user_id: eman.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

adora_running = Activity.create(
  user_id: adora.id,
  symbol: "fas fa-running",
  description: 'go running'
)

adora_beer = Activity.create(
  user_id: adora.id,
  symbol: "fas fa-beer",
  description: 'drink a beer'
)

alex_coffee = Activity.create(
  user_id: alex.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

alex_dog = Activity.create(
  user_id: alex.id,
  symbol: "fas fa-dog",
  description: 'walk the dog'
)

rutger_running = Activity.create!(
  user_id: rutger.id,
  symbol: "fas fa-running",
  description: 'go running'
)

rutger_lunch = Activity.create!(
  user_id: rutger.id,
  symbol: "fas fa-utensils",
  description: 'have lunch'
)

chris_coffee = Activity.create(
  user_id: chris.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

chris_bubbles = Activity.create(
  user_id: chris.id,
  symbol: "fas fa-comments",
  description: 'have a chat'
)

laura_dog = Activity.create(
  user_id: laura.id,
  symbol: "fas fa-dog",
  description: 'walk the dog'
)

laura_coffee = Activity.create(
  user_id: laura.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee'
)

puts "Finished creating #{Activity.all.count} activities"

puts "Creating some Availabilities!"

afternoon_brian = Availability.create!(
  user_id: brian.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

morning_brian = Availability.create!(
  user_id: brian.id,
  day_of_week: 'Wednesday',
  period_of_day: 'morning'
)

afternoon_winson = Availability.create!(
  user_id: winson.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

evening_winson = Availability.create(
  user_id: winson.id,
  day_of_week: 'Friday',
  period_of_day: 'evening'
)

afternoon_paal = Availability.create!(
  user_id: paal.id,
  day_of_week: 'Wednesday',
  period_of_day: 'afternoon'
)

morning_paal = Availability.create!(
  user_id: paal.id,
  day_of_week: 'Tuesday',
  period_of_day: 'morning'
)

noon_fritz = Availability.create!(
  user_id: fritz.id,
  day_of_week: 'Monday',
  period_of_day: 'noon'
)

afternoon_fritz = Availability.create!(
  user_id: fritz.id,
  day_of_week: 'Friday',
  period_of_day: 'afternoon'
)

noon_dale = Availability.create(
  user_id: dale.id,
  day_of_week: 'Monday',
  period_of_day: 'noon'
)

afternoon_dale = Availability.create(
  user_id: dale.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

afternoon_damon = Availability.create(
  user_id: damon.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

evening_damon = Availability.create(
  user_id: damon.id,
  day_of_week: 'Friday',
  period_of_day: 'evening'
)


afternoon_ben = Availability.create!(
  user_id: ben.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

evening_ben = Availability.create(
  user_id: ben.id,
  day_of_week: 'Friday',
  period_of_day: 'evening'
)

morning_marco = Availability.create(
  user_id: marco.id,
  day_of_week: 'Tuesday',
  period_of_day: 'morning'
)

evening_marco = Availability.create(
  user_id: marco.id,
  day_of_week: 'Friday',
  period_of_day: 'evening'
)

noon_filipo = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Monday',
  period_of_day: 'noon'
)

afternoon_filipo = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Thursday',
  period_of_day: 'afternoon'
)

morning_hannah = Availability.create!(
  user_id: hannah.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

afternoon_hannah = Availability.create!(
  user_id: hannah.id,
  day_of_week: 'Thursday',
  period_of_day: 'afternoon'
)

afternoon_robert = Availability.create!(
  user_id: robert.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

noon_robert = Availability.create!(
  user_id: robert.id,
  day_of_week: 'Thursday',
  period_of_day: 'noon'
)

afternoon_hans = Availability.create!(
  user_id: hans.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

morning_hans = Availability.create!(
  user_id: hans.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

afternoon_valerie = Availability.create!(
  user_id: valerie.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

morning_valerie = Availability.create!(
  user_id: valerie.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

morning_felix = Availability.create!(
  user_id: felix.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

afternoon_felix = Availability.create!(
  user_id: felix.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

afternoon_eman = Availability.create!(
  user_id: eman.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

morning_eman = Availability.create!(
  user_id: eman.id,
  day_of_week: 'Wednesday',
  period_of_day: 'morning'
)

noon_adora = Availability.create(
  user_id: adora.id,
  day_of_week: 'Monday',
  period_of_day: 'noon'
)

afternoon_adora = Availability.create(
  user_id: adora.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

afternoon_alex = Availability.create(
  user_id: alex.id,
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon'
)

morning_alex = Availability.create!(
  user_id: alex.id,
  day_of_week: 'Wednesday',
  period_of_day: 'morning'
)

afternoon_rutger = Availability.create!(
  user_id: rutger.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

morning_rutger = Availability.create!(
  user_id: rutger.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

afternoon_chris = Availability.create!(
  user_id: chris.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

morning_chris = Availability.create!(
  user_id: chris.id,
  day_of_week: 'Friday',
  period_of_day: 'morning'
)

afternoon_laura = Availability.create!(
  user_id: laura.id,
  day_of_week: 'Monday',
  period_of_day: 'afternoon'
)

morning_laura = Availability.create!(
  user_id: laura.id,
  day_of_week: 'Tuesday',
  period_of_day: 'morning'
)

puts "Created #{Availability.all.count} availabilities"



puts "Creating some Job Titles!"

lawyer = JobTitle.create(
  name: 'Lawyer'
)

data_scientist = JobTitle.create(
  name: 'Data Scientist'
)

intern = JobTitle.create(
  name: 'Intern'
)

business_development = JobTitle.create(
  name: 'Business Developer'
)
teacher = JobTitle.create(
  name: 'Teacher'
)

agile_coach = JobTitle.create!(
  name: 'Agile Coach'
)

junior_developer = JobTitle.create!(
  name: 'Junior Developer'
)

ux_designer = JobTitle.create!(
  name: 'UX Designer'
)

entrepreneur = JobTitle.create!(
  name: 'Entrepreneur'
)

marketer = JobTitle.create!(
  name: 'Marketer'
)

designer = JobTitle.create(
  name: 'Designer')

analyst = JobTitle.create(
  name: 'Analyst')

title1 = JobTitle.create(
  name: 'IT Analyst'
  )
title2 = JobTitle.create(
  name: 'Teacher Assistant'
  )


puts "Finished creating #{JobTitle.all.count} Job Titles"



puts "Creating some Companies!"

law_firm = Company.create!(
  name: 'PWC',
)

andreanum = Company.create(
  name: 'Andreanum'
)

deloitte = Company.create(
  name: 'Deloitte'
)

talent = Company.create!(
  name: 'TalentAdvisory',
)

company0 = Company.create(
  name: 'BMW'
  )
company1 = Company.create(
  name: 'Samsung'
  )

company2 = Company.create(
  name: 'Adidas'
  )


le_wagon = Company.create!(
  name: 'Le Wagon',
)

microsoft = Company.create(
  name: "Microsoft"
)

apple = Company.create!(
  name: 'Apple',
)

merck = Company.create!(
  name: 'Merck',
)

stern = Company.create(
  name: 'Stern Stewart')

hyve = Company.create(
  name: 'Hyve')

self_owned = Company.create(
  name: "Zendesk")

health_coach = Company.create(
  name: "Fitness First")

solar_energy = Company.create(
  name: 'Commonwealth Bank')

puts "Finished creating #{Company.all.count} Companies"


puts "Creating some Career Positions!"

brian_career = CareerPosition.create(
  user_id: brian.id,
  job_title: junior_developer,
  company: microsoft,
)

winson_career = CareerPosition.create(
  user_id: winson.id,
  job_title: data_scientist,
  company: deloitte ,
)

paal_career = CareerPosition.create(
  user_id: paal.id,
  job_title: entrepreneur ,
  company: company0 ,
)

fritz_career = CareerPosition.create(
  user_id: fritz.id,
  job_title: business_development,
  company: merck ,
)


career_position0 = CareerPosition.create(
  user_id: dale.id,
  job_title: junior_developer,
    company: merck
  )

career_position1 = CareerPosition.create(
  user_id: damon.id,
  company: company1,
  job_title: title1
  )

career_position2 = CareerPosition.create(
  user_id: ben.id,
  company: company2,
  job_title: title2
  )

marcos_career_position = CareerPosition.create(
  user_id: marco.id,
  job_title: designer,
  company: stern,
)

filippos_career_position = CareerPosition.create(
  user_id: filippo.id,
  job_title: analyst,
  company: hyve,
)

hannah_career1 = CareerPosition.create(
  user_id: hannah.id,
  job_title: ux_designer,
  company: merck
)

robert_career = CareerPosition.create(
  user_id: robert.id,
  job_title: lawyer,
  company: law_firm,
)

hans_career = CareerPosition.create(
  user_id: hans.id,
  job_title: ux_designer,
  company: law_firm,
)


valerie_career = CareerPosition.create(
  user_id: valerie.id,
  job_title: teacher,
  company:company0,
)

felix_career = CareerPosition.create(
  user_id: felix.id,
  job_title: teacher,
  company: andreanum,
)

eman_career = CareerPosition.create(
  user_id: eman.id,
  job_title: agile_coach,
  company: talent,
)


adora_career = CareerPosition.create(
  user_id: adora.id,
  job_title: marketer ,
  company: company2 ,
)

alex_career = CareerPosition.create(
  user_id: alex.id,
  job_title: business_development,
  company: solar_energy ,
)

rutger_career = CareerPosition.create(
  user_id:rutger.id,
  job_title: entrepreneur,
  company: self_owned ,
)

chris_career = CareerPosition.create(
  user_id: chris.id,
  job_title: marketer,
  company: merck
)

laura_career = CareerPosition.create(
  user_id: laura.id,
  job_title: entrepreneur,
  company: health_coach ,
)

puts "Finished creating #{CareerPosition.all.count} Career Positions"


puts "Creating some Meetings!"


brian_eman_meeting = Meeting.create!(
  status: 'accepted',
  meeting_date_time: DateTime.new(2020,3,10,6,0,0),
  suggested_activity: 'go running',
  meeting_location: "Brian's address",
  sender_id: brian.id,
  recipient_id: eman.id,
  topic: 'Business Development'
)

filippo_marco_meeting = Meeting.create!(
  status: 'pending',
  meeting_date_time: DateTime.new(2021,3,14,8,0,0),
  suggested_activity: 'blow bubbles',
  meeting_location: "Marco's address",
  sender_id: filippo.id,
  recipient_id: marco.id,
  topic: 'Recruiting'
)

marco_brian_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'go running',
  meeting_location: "Brian's address",
  sender_id: marco.id,
  recipient_id: brian.id,
  topic: 'Business in Latin America'
)

eman_filippo_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,7,9,8,0,0),
  suggested_activity: 'go swimming',
  meeting_location: "Eman's address",
  sender_id: eman.id,
  recipient_id: filippo.id,
  topic: 'Tech in Italy'
)

eman_marco_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,1,11,6,0,0),
  suggested_activity: 'go swimming',
  meeting_location: "Marco's address",
  sender_id: eman.id,
  recipient_id: marco.id,
  topic: 'Italian startups'
)

marco_brian_meeting = Meeting.create(
  sender_id: marco.id,
  recipient_id: brian.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'go swimming',
  meeting_location: "Brian's address",
  topic: 'professional skiing'
)


eman_robert_meeting = Meeting.create(
  sender_id: eman.id,
  recipient_id: robert.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,12,8,0,0),

  suggested_activity: 'go jogging',
  meeting_location: "Robert's address",
  topic: 'law in general'
)


puts "Finished creating #{Meeting.all.count} meetings"

puts "Creating some Skills!"

brian_skill_1 = Skill.create(
  user_id: brian.id,
  name: 'Personal Training')

brian_skill_2 = Skill.create(
  user_id: brian.id,
  name: 'Sports')

winson_skill_1 = Skill.create(
  user_id: winson.id,
  name: 'Python')

winson_skill_2 = Skill.create(
  user_id: winson.id,
  name: 'Data Science')

paal_skill_1 = Skill.create(
  user_id: paal.id,
  name: 'Business Development')

paal_skill_2 = Skill.create(
  user_id: paal.id,
  name: 'Networking')

fritz_skill_1 = Skill.create(
  user_id: fritz.id,
  name: 'Investment Banking')

fritz_skill_2 = Skill.create(
  user_id: fritz.id,
  name: 'Programming')

dale_skill_1 = Skill.create(
  user_id: dale.id,
  name: 'Chemical Engineering')

dale_skill_2 = Skill.create(
  user_id: dale.id,
  name: 'Completing Challenges')

damon_skill_1 = Skill.create(
  user_id: damon.id,
  name: 'Building Products')

damon_skill_2 = Skill.create(
  user_id: damon.id,
  name: 'Creative Thinking')

ben_skill_1 = Skill.create(
  user_id: ben.id,
  name: 'Business')

ben_skill_2 = Skill.create(
  user_id: ben.id,
  name: 'Public Speaking')

marco_skill_1 = Skill.create(
  user_id: marco.id,
  name: 'Italian Rethoric')

marco_skill_2 = Skill.create(
  user_id: marco.id,
  name: 'Professional Cooking')

filippo_skill_1 = Skill.create(
  user_id: filippo.id,
  name: 'Technical Repairs')

filippo_skill_2 = Skill.create(
  user_id: filippo.id,
  name: 'Engineering')

hannah_skill_1 = Skill.create(
  user_id: hannah.id,
  name: 'Javascript')

hannah_skill_2 = Skill.create(
  user_id: hannah.id,
  name: 'PHP')

robert_skill_1 = Skill.create(
  user_id: robert.id,
  name: 'Corporate Law')

robert_skill_2 = Skill.create(
  user_id: robert.id,
  name: 'Economics')

hans_skill_1 = Skill.create(
  user_id: hans.id,
  name: 'Civil Law')

hans_skill_2 = Skill.create(
  user_id: hans.id,
  name: 'Local Politics')

valerie_skill_1 = Skill.create(
  user_id: valerie.id,
  name: 'Ruby on Rails')

valerie_skill_2 = Skill.create(
  user_id: valerie.id,
  name: 'StartUps')

felix_skill_1 = Skill.create(
  user_id: felix.id,
  name: 'Teaching')

felix_skill_2 = Skill.create(
  user_id: felix.id,
  name: 'Ancient History')

eman_skill_1 = Skill.create(
  user_id: eman.id,
  name: 'Business Analysis')

eman_skill_2 = Skill.create(
  user_id: eman.id,
  name: 'Coaching')

adora_skill_1 = Skill.create(
  user_id: adora.id,
  name: 'Marketing Planning')

adora_skill_2 = Skill.create(
  user_id: adora.id,
  name: 'Freelancing')

alex_skill_1 = Skill.create(
  user_id: alex.id,
  name: 'Sustainability')

alex_skill_2 = Skill.create(
  user_id: alex.id,
  name: 'Ecology')

rutger_skill_1 = Skill.create(
  user_id: rutger.id,
  name: 'HTML')

rutger_skill_2 = Skill.create(
  user_id: rutger.id,
  name: 'CSS')

chris_skill_1 = Skill.create(
  user_id: chris.id,
  name: 'Commerce')

chris_skill_2 = Skill.create(
  user_id: chris.id,
  name: 'Venture Capital')

laura_skill_1 = Skill.create(
  user_id: laura.id,
  name: 'Chemistry')

laura_skill_2 = Skill.create(
  user_id: laura.id,
  name: 'Consulting')

puts "Finished creating #{Skill.all.count} skills"

puts 'Creating some professional interests'

cloud = ProfessionalInterest.create(
  user_id: brian.id,
  name: "Cloud computing"
)

data_science = ProfessionalInterest.create(
  user_id: winson.id,
  name: "Data Science"
)

education = ProfessionalInterest.create(
  user_id: paal.id,
  name: "Education"
)

tech = ProfessionalInterest.create(
  user_id: paal.id,
  name: 'Tech')

business = ProfessionalInterest.create(
  user_id: fritz.id,
  name: 'Business')

tech = ProfessionalInterest.create(
  user_id: fritz.id,
  name: 'Tech')

chemical_engineer = ProfessionalInterest.create(
  user_id: dale.id,
  name: 'Chemical Engineering')

code = ProfessionalInterest.create(
  user_id: dale.id,
  name: 'Code')

product_management = ProfessionalInterest.create(
  user_id: damon.id,
  name: 'Product Management')

code = ProfessionalInterest.create(
  user_id: damon.id,
  name: 'Code')

professional_interest0 = ProfessionalInterest.create(
  name: 'RoR',
  user_id: dale.id
  )
professional_interest1 = ProfessionalInterest.create(
  name: 'Ruby',
  user_id: ben.id
  )
professional_interest2 = ProfessionalInterest.create(
  name: 'CSS',
  user_id: ben.id
  )

design = ProfessionalInterest.create(
  user_id: marco.id,
  name: 'Design')

procurement = ProfessionalInterest.create(
  user_id: filippo.id,
  name: 'Procurement')

marketing = ProfessionalInterest.create(
  user_id: filippo.id,
  name: 'Marketing')

health = ProfessionalInterest.create(
  user_id: hannah.id,
  name: 'Health')

tech = ProfessionalInterest.create(
  user_id: hannah.id,
  name: 'Tech')

law = ProfessionalInterest.create(
  user_id: robert.id,
  name: 'Law')

law = ProfessionalInterest.create(
  user_id: hans.id,
  name: 'Law')

tech = ProfessionalInterest.create(
  user_id: hans.id,
  name: 'Tech')

education = ProfessionalInterest.create(
  user_id: valerie.id,
  name: "Education"
)

tech = ProfessionalInterest.create(
  user_id: valerie.id,
  name: 'Tech')


education = ProfessionalInterest.create(
  user_id: felix.id,
  name: "Education"
)

management = ProfessionalInterest.create(
  user_id: eman.id,
  name: "Management"
)

marketing = ProfessionalInterest.create(
  user_id: adora.id,
  name: "Marketing"
)

tech = ProfessionalInterest.create(
  user_id: adora.id,
  name: "Tech"
)

business_development = ProfessionalInterest.create(
  user_id: alex.id,
  name: "Business Development"
)

tech = ProfessionalInterest.create(
  user_id: rutger.id,
  name: "Tech"
)

code = ProfessionalInterest.create(
  user_id: rutger.id,
  name: 'Code')

marketing = ProfessionalInterest.create(
  user_id: chris.id,
  name: "Marketing"
)

management = ProfessionalInterest.create(
  user_id: laura.id,
  name: "Education"
)

business_development = ProfessionalInterest.create(
  user_id: laura.id,
  name: "Business Development"
)


puts "Finished creating #{ProfessionalInterest.all.count} professional interests"

# puts "Creating Journal Entries"

# journal_entry0 = Journal.create(
#   description: 'Journal entry - Dale.',
#   rating: true,
#   user: dale
#   )
# journal_entry1 = Journal.create(
#   description: 'Journal entry - Damon.',
#   rating: false,
#   user: damon
#   )
# journal_entry2 = Journal.create(
#   description: 'Journal entry - Ben.',
#   rating: true,
#   user: Ben
#   )
