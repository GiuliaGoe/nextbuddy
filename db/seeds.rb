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
# JobFunction.destroy_all
# Industry.destroy_all
Company.destroy_all
Meeting.destroy_all
Activity.destroy_all
Availability.destroy_all
ProfessionalInterest.destroy_all
Skill.destroy_all
User.destroy_all


puts "Creating Users"

juan = User.create!(
  first_name: 'Juan',
  last_name: 'Cardenas',
  email: 'juan.cardenas@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552290231/juan.png',
  address: '99 Beacon Rd, Port Melbourne',
  radius: 500,
  professional_goal: '',
  bio: 'Standing at the forefront of the fastest moving technology industry trend: cloud services. I have spent the past five years evangelizing an industry-wide shift to the cloud and has helped position Microsoft as a leader in the public cloud space.'
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
  photo: "Thttps://res.cloudinary.com/giugoe/image/upload/v1552293209/marco.jpg",
  address: "9/271 William St, Melbourne",
  radius: 5.0,
  professional_goal: '',
  bio: 'Accomplished designer at Stern, with 20 years’ experience in the automobile markets')

filippo = User.create(
  first_name: "Filippo",
  last_name: "Faguzzi",
  email: 'filippo.faguzzi@gmail.com',
  password: '123456',
  photo: "https://res.cloudinary.com/giugoe/image/upload/v1552293529/filippo.jpg",
  address: "177 Cecil St, South Melbourne'",
  radius: 2.4,
  professional_goal: '',
  bio: 'An industry expert with more than 20 years of successful experience in full life cycle Procurement and Business Development.')

hannah = User.create!(
  first_name: 'Hannah',
  last_name: "Fuzzi",
  email: 'hannah.fuzzi@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552294147/hannah.jpg',
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
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552294124/robert.jpg',
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
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552293963/hans.jpg',
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

jonas = User.create!(
  first_name: 'Jonas',
  last_name: 'Japing',
  email: 'jonasjaping@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304606/jonas.jpg',
  address: '7 Orion Mews, Port Melbourne',
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

giulia = User.create!(
  first_name: 'Giulia',
  last_name: 'Goella',
  email: 'giulia.goella@gmail.com',
  password: '123456',
  photo: 'https://res.cloudinary.com/giugoe/image/upload/v1552304288/giulia.jpg',
  address: '12 Hotham St, South Melbourne',
  radius: 450,
  professional_goal: '',
  bio: 'I was in the sector of management consulting previously, however, now I recognise that my true calling is to build value-based businesses. Currently, I am looking for oppotunities to connect with people that are interested in entreprenuership and business development.'
)

puts "Created #{User.all.length} users"

puts "Creating some Activities!"


juan_running = Activity.create!(
  description: 'go running',
  symbol: "fas fa-running",
  user_id: juan.id
)

juan_lunch = Activity.create!(
  description: 'have lunch',
  symbol: "fas fa-utensils",
  user_id: juan.id
)

winson_coffee = Activity.create(
  user_id: winson.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')

winson_jogging = Activity.create(
  user_id: winson.id,
  symbol: "fas fa-walking",
  description: 'go jogging')

paal_bubbles = Activity.create(
  user_id: paal.id,
  symbol: "fas fa-comments",
  description: 'blow bubbles')

paal_swimming = Activity.create!(
  description: 'go swimming',
  symbol: "fas fa-swimmer",
  user_id: paal.id
)

fritz_beer = Activity.create(
  user_id: fritz.id,
  symbol: "fas fa-beer",
  description: 'drink a beer')

frity_coffee = Activity.create(
  user_id: fritz.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')

dale_dog = Activity.create(
  description: 'walk the dog',
  symbol: "fas fa-walking",
  user_id: dale.id
  )

dale_coffee = Activity.create(
  user_id: dale.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')

damon_beer = Activity.create(
  description: 'drink a beer',
  symbol: "fas fa-beer",
  user_id: damon.id
  )

damon_running = Activity.create(
  user_id: damon.id,
  symbol: "fas fa-running",
  description: 'go running')

ben_jogging = Activity.create(
  description: 'go jogging',
  symbol: "fas fa-walking",
  user_id: ben.id
  )

ben_coffee = Activity.create(
  user_id: ben.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')


marco_jogging = Activity.create(
  user_id: marco.id,
  symbol: "fas fa-walking",

  description: 'go jogging')

marco_dog = Activity.create(
  user_id: marco.id,
  symbol: "fas fa-dog",
  description: 'walk the dog')

marco_coffee = Activity.create(
  user_id: marco.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')


filippo_running = Activity.create(
  user_id: filippo.id,
    symbol: "fas fa-running",

  description: 'go running')

filippo_walkthedog = Activity.create(
  user_id: filippo.id,
    symbol: "fas fa-dog",

  description: 'walk the dog')

hannah_coffee = Activity.create(
  user_id: hannah.id,
  symbol: "fas fa-coffee",
  description: 'have a coffe')

hannah_bubbles = Activity.create(
  user_id: hannah.id,
  symbol: "fas fa-comments",
  description: 'blow bubbles')

robert_coffee = Activity.create(
  user_id: robert.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')

rober_lunch = Activity.create!(
  description: 'have lunch',
  symbol: "fas fa-utensils",
  user_id: robert.id
)

hans_coffee = Activity.create(
  user_id: hans.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')

hans_swimming = Activity.create!(
  description: 'go swimming',
  symbol: "fas fa-swimmer",
  user_id: hans.id
)

valerie_coffee = Activity.create(
  user_id: valerie.id,
  symbol: "fas fa-coffee",
  description: 'have a coffee')


felix_bubbles = Activity.create(
  user_id: felix.id,
      symbol: "fas fa-comments",

  description: 'blow bubbles')

felix_lunch = Activity.create(
  user_id: felix.id,
    symbol: "fas fa-utensils",

  description: 'have lunch')

robert_coffee = Activity.create(
  user_id: robert.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

hans_coffee = Activity.create(
  user_id: hans.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

jonas_lunch = Activity.create!(
  description: 'have lunch',
    symbol: "fas fa-utensils",

  user_id: jonas.id
)

valerie_dog = Activity.create(
  user_id: valerie.id,
    symbol: "fas fa-dog",

  description: 'walk the dog')

felix_swimming = Activity.create!(
  description: 'go swimming',
    symbol: "fas fa-swimmer",

  user_id: felix.id
)

felix_jogging = Activity.create(
  user_id: felix.id,
    symbol: "fas fa-walking",

  description: 'go jogging')

jonas_lazy = Activity.create(
  user_id: jonas.id,
    symbol: "fas fa-comments",

  description: 'blow bubbles')

jonas_coffee = Activity.create(
  user_id: jonas.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

adora_running = Activity.create(
  user_id: adora.id,
      symbol: "fas fa-running",

  description: 'go running')

adora_beer = Activity.create(
  description: 'drink a beer',
    symbol: "fas fa-beer",

  user_id: adora.id
  )

alex_coffee = Activity.create(
  user_id: alex.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

alex_dog = Activity.create(
  description: 'walk the dog',
  user_id: alex.id
  )

rutger_running = Activity.create!(
  description: 'go running',
    symbol: "fas fa-running",

  user_id: rutger.id
)

rutger_lunch = Activity.create!(
  description: 'have lunch',
    symbol: "fas fa-utensils",

  user_id: rutger.id
)

chris_coffee = Activity.create(
  user_id: chris.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

chris_bubbles = Activity.create(
  user_id: chris.id,
    symbol: "fas fa-comments",

  description: 'blow bubbles')

giulia_dog = Activity.create(
  user_id: giulia.id,
  description: 'walk the dog')

giulia_coffee = Activity.create(
  user_id: giulia.id,
    symbol: "fas fa-coffee",

  description: 'have a coffee')

puts "Finished creating #{Activity.all.count} activities"

puts "Creating some Availabilities!"

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: juan.id
)

noon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'noon',
  user_id: juan.id
)

morning = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'morning',
  user_id: juan.id
)


afternoon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: winson.id
)

marco_avail2 = Availability.create(
  user_id: winson.id,
  day_of_week: 'Friday',
  period_of_day: 'evenings' )


afternoon = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'afternoon',
  user_id: paal.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: fritz.id
)

afternoon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'afternoon',
  user_id: fritz.id
)

availability0 = Availability.create(
  day_of_week: 'Monday',
  period_of_day: 'noon',
  user_id: dale.id)

availability1 = Availability.create(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: dale.id
  )

availability1 = Availability.create(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: damon.id
  )
availability2 = Availability.create(
  day_of_week: 'Friday',
  period_of_day: 'evening',
  user_id: damon.id
  )


afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: ben.id
)

availability2 = Availability.create(
  day_of_week: 'Friday',
  period_of_day: 'evening',
  user_id: ben.id
  )

marco_avail1 = Availability.create(
  user_id: marco.id,
  day_of_week: 'Tuesday',
  period_of_day: 'morning' )

marco_avail2 = Availability.create(
  user_id: marco.id,
  day_of_week: 'Friday',
  period_of_day: 'evening' )

filippo_avail1 = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Monday',
  period_of_day: 'noon' )

filippo_avail2 = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Thursday',
  period_of_day: 'afternoon' )

morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: hannah.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: robert.id
)

afternoon = Availability.create!(
  day_of_week: 'Thursday',
  period_of_day: 'afternoon',
  user_id: robert.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: hans.id
)

afternoon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'afternoon',
  user_id: hans.id
)

afternoon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: valerie.id
)

morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: valerie.id
)

morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: felix.id
)

afternoon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: jonas.id
)

morning = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'morning',
  user_id: jonas.id
)

availability0 = Availability.create(
  day_of_week: 'Monday',
  period_of_day: 'noon',
  user_id: adora.id
  )
availability1 = Availability.create(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: adora.id
  )

availability1 = Availability.create(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: alex.id
  )

afternoon = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'afternoon',
  user_id: alex.id
)

availability2 = Availability.create(
  day_of_week: 'Friday',
  period_of_day: 'evening',
  user_id: alex.id
  )


afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: rutger.id
)

afternoon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'afternoon',
  user_id: rutger.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: chris.id
)

morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: chris.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: giulia.id
)

afternoon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user_id: giulia.id
)

morning = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'morning',
  user_id: giulia.id
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

title0 = JobTitle.create(
  name: 'Jr Developer'
  )
title1 = JobTitle.create(
  name: 'IT Analyst'
  )
title2 = JobTitle.create(
  name: 'Teacher Assistant'
  )


puts "Finished creating #{JobTitle.all.count} Job Titles"



puts "Creating some Companies!"

law_firm = Company.create!(
  name: 'Roberts own f****** empire',
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
  name: 'Le Wagon'
  )
company1 = Company.create(
  name: 'Catch Up'
  )

company2 = Company.create(
  name: 'Next Buddy'
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
  name: 'SternStewart')

hyve = Company.create(
  name: 'Hyve')

self_owned = Company.create(
  name: "Rutger's Empire")

health_coach = Company.create(
  name: "Your Health Coach")

solar_energy = Company.create(
  name: 'Solar Energy')

puts "Finished creating #{Company.all.count} Companies"

# puts "Creating some Job Functions!"

# law = JobFunction.create!(
#   name: 'Law',
# )

# education = JobFunction.create(
#   name: 'Education'
#   )

# marketing = JobFunction.create!(
#   name: 'Marketing',
# )

# research = JobFunction.create!(
#   name: 'Research',
# )

# it = JobFunction.create!(
#   name: 'IT',
# )

# sales = JobFunction.create!(
#   name: 'Sales',
# )

# strategy = JobFunction.create!(
#   name: 'Strategy',
# )

# design = JobFunction.create!(
#   name: 'Design',
# )

# procurement = JobFunction.create(
#   name: 'Procurement')

# job_function0 = JobFunction.create(
#   name: 'Jr Developer functions'
#   )
# job_function1 = JobFunction.create(
#   name: 'IT Analyst functions'
#   )
# job_function2 = JobFunction.create(
#   name: 'Teacher Assistant functions'
#   )


# puts "Finished creating #{JobFunction.all.count} Functions"

# puts "Creating some Industries!"

# law_industry = Industry.create(
#   name: 'Big Law Firm')

# education_industry = Industry.create(
#   name: 'Lighting')

# healthcare = Industry.create!(
#   name: 'Healthcare',
# )

# health = Industry.create!(
#   name: 'Health',
# )

# construction = Industry.create!(
#   name: 'Construction',
# )

# market_research = Industry.create!(
#   name: 'Market Research',
# )

# web_development = Industry.create!(
#   name: 'Web Development',
# )

# industry0 = Industry.create(
#   name: 'Manufacturing'
#   )
# industry1 = Industry.create(
#   name: 'Mining'
#   )
# industry2 = Industry.create(
#   name: 'Construction'
#   )

# solar = Industry.create(
#   name: 'Solar'
#   )

# hospitality = Industry.create!(
#   name: 'Hospitality',
# )

# consumer_electronics = Industry.create!(
#   name: 'Consumer Electronics',
# )

# automotive = Industry.create(
#   name: 'Automotive')

# lighting = Industry.create(
#   name: 'Lighting')


# puts "Finished creating #{Industry.all.count} industries"

puts "Creating some Career Positions!"

juan_career = CareerPosition.create(
  user_id: juan.id,
  job_title: junior_developer,
  # job_function: it,
  company: microsoft,
  # industry: consumer_electronics
)

winson_career = CareerPosition.create(
  user_id: winson.id,
  job_title: data_scientist,
  # job_function: research ,
  company: deloitte ,
  # industry: market_research
)

paal_career = CareerPosition.create(
  user_id: paal.id,
  job_title: entrepreneur ,
  # job_function: education,
  company: company0 ,
  # industry: web_development
)

fritz_career = CareerPosition.create(
  user_id: fritz.id,
  job_title: business_development,
  # job_function: strategy ,
  company: merck ,
  # industry: healthcare
)


career_position0 = CareerPosition.create(
  user_id: dale.id,
  # job_function: job_function0,
  # industry: industry1,
  company: company1,
  job_title: title0
  )

career_position1 = CareerPosition.create(
  user_id: damon.id,
  # job_function: job_function1,
  # industry: industry1,
  company: company1,
  job_title: title1
  )

career_position2 = CareerPosition.create(
  user_id: ben.id,
  # job_function: job_function2,
  # industry: industry2,
  company: company2,
  job_title: title2
  )

marcos_career_position = CareerPosition.create(
  user_id: marco.id,
  job_title: designer,
  company: stern,
  # industry: automotive,
  # job_function: it)

filippos_career_position = CareerPosition.create(
  user_id: filippo.id,
  job_title: analyst,
  company: hyve,
  # industry: lighting,
  # job_function: procurement)

hannah_career1 = CareerPosition.create!(
  user_id: hannah.id,
  job_title: ux_designer,
  # job_function: design,
  company: merck,
  # industry: healthcare
)

robert_career = CareerPosition.create(
  user_id: robert.id,
  job_title: lawyer,
  # job_function: law,
  company: law_firm,
  # industry: law_industry
)

hans_career = CareerPosition.create(
  user_id: hans.id,
  job_title: ux_designer,
  # job_function: law,
  company: law_firm,
  # industry: law_industry
)


valerie_career = CareerPosition.create(
  user_id: valerie.id,
  job_title: teacher,
  # job_function: education,
  company:company0,
  # industry: web_development
)

felix_career = CareerPosition.create(
  user_id: felix.id,
  job_title: teacher,
  # job_function: education,
  company: andreanum,
  # industry: education_industry
)

jonas_career = CareerPosition.create(
  user_id: jonas.id,
  job_title: agile_coach,
  # job_function: strategy,
  company: talent,
  # industry: construction
)


adora_career = CareerPosition.create(
  user_id: adora.id,
  job_title: marketer ,
  # job_function: marketing ,
  company: company2 ,
  # industry: consumer_electronics
)

alex_career = CareerPosition.create(
  user_id: alex.id,
  job_title: business_development,
  # job_function: strategy ,
  company: solar_energy ,
  # industry: solar
)

rutger_career = CareerPosition.create(
  user_id:rutger.id,
  job_title: entrepreneur,
  # job_function: job_function0 ,
  company: self_owned ,
  # industry: web_development
)

chris_career = CareerPosition.create(
  user_id: chris.id,
  job_title: marketer,
  # job_function: marketing ,
  company: merck ,
  # industry: healthcare
)

giulia_career = CareerPosition.create(
  user_id: giulia.id,
  job_title: entrepreneur,
  # job_function: job_function0,
  company: health_coach ,
  # industry: health
)

puts "Finished creating #{CareerPosition.all.count} Career Positions"


puts "Creating some Meetings!"


juan_jonas_meeting = Meeting.create!(
  status: 'accepted',
  meeting_date_time: DateTime.new(2020,3,10,6,0,0),
  suggested_activity: 'go running',
  meeting_location: 'at your place',
  sender_id: juan.id,
  recipient_id: jonas.id,
  topic: 'Business Development'
)

filippo_marco_meeting = Meeting.create!(
  status: 'pending',
  meeting_date_time: DateTime.new(2021,3,14,8,0,0),
  suggested_activity: 'blow bubbles',
  meeting_location: 'at my place',
  sender_id: filippo.id,
  recipient_id: marco.id,
  topic: 'Recruiting'
)

marco_juan_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'go running',
  meeting_location: '20 Bourke St',
  sender_id: marco.id,
  recipient_id: juan.id,
  topic: 'Business in Latin America'
)

jonas_filippo_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,7,9,8,0,0),
  suggested_activity: 'go swimming',
  meeting_location: '20 Bourke St',
  sender_id: jonas.id,
  recipient_id: filippo.id,
  topic: 'Tech in Italy'
)

jonas_marco_meeting = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,1,11,6,0,0),
  suggested_activity: 'go swimming',
  meeting_location: '20 Bourke St',
  sender_id: jonas.id,
  recipient_id: marco.id,
  topic: 'Italian Startups'
)

marco_juan_meeting = Meeting.create(
  sender_id: marco.id,
  recipient_id: juan.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'go swimming',
  meeting_location: '70 Dorcas St',
  topic: 'Professional Skiing'
)


jonas_robert_meeting = Meeting.create(
  sender_id: jonas.id,
  recipient_id: robert.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,12,8,0,0),

  suggested_activity: 'go jogging',
  meeting_location: 'McDonalds Swanston Street',
  topic: 'Law in general'
)


puts "Finished creating #{Meeting.all.count} meetings"

puts "Creating some Skills!"

juan_skill_1 = Skill.create(
  user_id: juan.id,
  name: 'Ruby on Rails')

juan_skill_2 = Skill.create(
  user_id: juan.id,
  name: 'CSS')

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

jonas_skill_1 = Skill.create(
  user_id: jonas.id,
  name: 'Business Analysis')

jonas_skill_2 = Skill.create(
  user_id: jonas.id,
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

giulia_skill_1 = Skill.create(
  user_id: giulia.id,
  name: 'Chemistry')

giulia_skill_2 = Skill.create(
  user_id: giulia.id,
  name: 'Consulting')

puts "Finished creating #{Skill.all.count} skills"

puts 'Creating some professional interests'

cloud = ProfessionalInterest.create(
  user_id: juan.id,
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
  user_id: damon.id
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
  user_id: jonas.id,
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
  user_id: giulia.id,
  name: "Education"
)

business_development = ProfessionalInterest.create(
  user_id: giulia.id,
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
