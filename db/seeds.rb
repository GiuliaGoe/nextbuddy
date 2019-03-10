# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"
JobTitle.destroy_all
JobFunction.destroy_all
Industry.destroy_all
Company.destroy_all
Meeting.destroy_all
Activity.destroy_all
Availability.destroy_all
ProfessionalInterest.destroy_all
Skill.destroy_all
CareerPosition.destroy_all
User.destroy_all


puts "Creating Users"

juan = User.create!(
  first_name: 'Juan',
  last_name: 'Jing',
  email: 'Juan@gmail.com',
  password: '123456',
  photo: 'juan',
  address: 'Via Bologna 70, Melbourne',
  radius: 500,
  professional_goal: 'my goal is huge',
  bio: 'i want to get to know more and more people.'

)

dale = User.create!(
  first_name: 'Dale',
  last_name: 'Hindle',
  email: 'dale.h@mail.com',
  password: '123456',
  photo: 'photo',
  address: '390 Russell St',
  radius: 123.7,
  professional_goal: 'Do amazing stuff - Dale',
  bio: 'Chemical Engineer looking to compliment my skills by learning some web development.'
)
damon = User.create!(
  first_name: 'Damon',
  last_name: 'Ross',
  email: 'damon.r@mail.com',
  password: '123456',
  photo: 'photo',
  radius: 253.7,
  professional_goal: 'Do amazing stuff - Damon',
  bio: "Worked in product management, keen to learn more about technical development while I am at Le Wagon Melbourne. After I am finished I hope to build more cool products and travel around :)"
)
ben = User.create!(
  first_name: 'Ben',
  last_name: 'Linder',
  email: 'ben.l@mail.com',
  password: '123456',
  photo: 'photo',
  address: '90 lonsdale St',
  radius: 13.7,
  professional_goal: 'Do amazing stuff - Ben',
  bio: "Bachelor degree in management and marketing. Floated through life with zero idea what I wanted to be when I grew up."
)

marco = User.create(
  first_name: "Marco",
  last_name: "Materazzi",
  photo: "This is a photo placeholder for Marco",
  address: "Via San Bologna",
  radius: 5.0,
  email: 'Marco@Materazzi.com',
  password: '123456',
  professional_goal: 'Placeholder_goal Marco',
  bio: 'This is Marcos Bio')

filippo = User.create(
  first_name: "Filippo",
  last_name: "Faguzzi",
  photo: "This is a photo placeholder for Filippo",
  address: "Via Magana",
  radius: 2.4,
  email: 'Filippo@Faguzzi.com',
  password: '123456',
  professional_goal: 'Placeholder_goal Filippo',
  bio: 'This is Filippos Bio')

hannah = User.create!(
  first_name: 'Hannah',
  last_name: "Fuzzi",
  email: 'Hannah@gmail.com',
  password: '123456',
  photo: 'hannah',
  address: 'Swanston street 80, Melbourne',
  radius: 900,
  professional_goal: 'i want to become a billionaire',
  bio: 'i love meeting people'
)

robert = User.create!(
  first_name: 'Robert',
  last_name: 'Pfeiffer',
  email: 'robert@Pfeiffer.com',
  password: '123456',
  photo: 'robert',
  address: 'Hildesheim',
  radius: 700,
  professional_goal: 'I want to be a lawyer!',
  bio: 'When I was younger - I found out that everyone should have equal opportunities!'
)

hans = User.create!(
  first_name: 'Hans-Peter',
  last_name: 'Von Der Heyde',
  email: 'Hans@Heyde.com',
  password: '123456',
  photo: 'hans',
  address: 'Hildesheim',
  radius: 700,
  professional_goal: 'My dream is to become a politician in Hildesheim',
  bio: 'The current mayor is a criminal!!! Vote 4 Me to make Hildesheim great again :-)'
)

felix = User.create!(
  first_name: 'Felix',
  last_name: 'Herrmann',
  email: 'Felix@Herrmann.com',
  password: '123456',
  photo: 'felix',
  address: 'Hildesheim',
  radius: 700,
  professional_goal: 'I will be the laziest teacher the world has ever seen',
  bio: 'Law was not my thing - so I got myself a girlfriend that does law. I need 5 coffees a day so might as well have one with you'
)

jonas = User.create!(
  first_name: 'Jonas',
  last_name: 'Japing',
  email: 'jonasjaping@gmail.com',
  password: '123456',
  photo: 'jonas',
  address: 'Dorcas Street 70, Melbourne',
  radius: 700,
  professional_goal: 'Live in the same city as Giulia',
  bio: 'i am really cool'
)

puts "Created #{User.all.length} users"

puts "Creating some Activities!"

coffee = Activity.create(
  user_id: felix.id,
  description: 'Have a coffee')

lazy = Activity.create(
  user_id: felix.id,
  description: 'FIFA 14')

lotr = Activity.create(
  user_id: felix.id,
  description: 'Lord of the rings')

coffee = Activity.create(
  user_id: robert.id,
  description: 'Have a coffee')

coffee = Activity.create(
  user_id: hans.id,
  description: 'Have a coffee')

lunch = Activity.create!(
  description: 'Lunch',
  user_id: jonas.id
)

running = Activity.create!(
  description: 'Running',
  user_id: juan.id
)

lunch = Activity.create!(
  description: 'Lunch',
  user_id: juan.id
)

swimming = Activity.create!(
  description: 'Swimming',
  user_id: hannah.id
)

swimming = Activity.create!(
  description: 'Swimming',
  user_id: jonas.id
)

jogging = Activity.create(
  user_id: marco.id,
  description: 'Jogging')

walking = Activity.create(
  user_id: marco.id,
  description: 'Walking')

coffee = Activity.create(
  user_id: marco.id,
  description: 'Have a coffee')

running = Activity.create(
  user_id: filippo.id,
  description: 'Running')

tea = Activity.create(
  user_id: filippo.id,
  description: 'Drink a tea')

activity0 = Activity.create(
  description: 'Blow bubbles',
  user_id: dale.id
  )
activity1 = Activity.create(
  description: 'Drink a Beer',
  user_id: damon.id
  )
activity2 = Activity.create(
  description: 'Lunch',
  user_id: ben.id
  )

walkthedog = Activity.create(
  user_id: filippo.id,
  description: 'Walk the dog')

puts "Finished creating #{Activity.all.count} activities"

puts "Creating some Availabilities!"

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: robert.id
)

afternoon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'afternoon',
  user_id: robert.id
)

afternoon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'afternoon',
  user_id: hans.id
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: hans.id
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

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user_id: juan.id
)

availability0 = Availability.create(
  day_of_week: 'Monday',
  period_of_day: 'noon',
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
  user_id: ben.id
  )


morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: hannah.id
)

noon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: jonas.id
)

noon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user_id: juan.id
)

marco_avail1 = Availability.create(
  user_id: marco.id,
  day_of_week: 'Tuesday',
  period_of_day: 'Morning' )

marco_avail2 = Availability.create(
  user_id: marco.id,
  day_of_week: 'Friday',
  period_of_day: 'Evening' )

filippo_avail1 = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Monday',
  period_of_day: 'Noon' )

filippo_avail2 = Availability.create(
  user_id: filippo.id,
  day_of_week: 'Thursday',
  period_of_day: 'Afternoon' )

puts "Created #{Availability.all.count} availabilities"



puts "Creating some Job Titles!"

lawyer = JobTitle.create(
  name: 'Boss'
)

intern = JobTitle.create(
  name: 'Intern'
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

education = JobFunction.create(
  name: 'Education'
  )


puts "Finished creating #{Company.all.count} Companies"

puts "Creating some Job Functions!"

law = JobFunction.create!(
  name: 'Law',
)

marketing = JobFunction.create!(
  name: 'Marketing',
)

it = JobFunction.create!(
  name: 'IT',
)

sales = JobFunction.create!(
  name: 'Sales',
)

strategy = JobFunction.create!(
  name: 'Strategy',
)

design = JobFunction.create!(
  name: 'Design',
)

procurement = JobFunction.create(
  name: 'Procurement')

job_function0 = JobFunction.create(
  name: 'Jr Developer functions'
  )
job_function1 = JobFunction.create(
  name: 'IT Analyst functions'
  )
job_function2 = JobFunction.create(
  name: 'Teacher Assistant functions'
  )


puts "Finished creating #{JobFunction.all.count} Functions"

puts "Creating some Industries!"

law_industry = Industry.create(
  name: 'Big Ass Law')

education_industry = Industry.create(
  name: 'Lighting')

healthcare = Industry.create!(
  name: 'Healthcare',
)

construction = Industry.create!(
  name: 'Construction',
)

industry0 = Industry.create(
  name: 'Manufacturing'
  )
industry1 = Industry.create(
  name: 'Mining'
  )
industry2 = Industry.create(
  name: 'Construction'
  )


hospitality = Industry.create!(
  name: 'Hospitality',
)

consumer_electronics = Industry.create!(
  name: 'Consumer Electronics',
)

automotive = Industry.create(
  name: 'Automotive')

lighting = Industry.create(
  name: 'Lighting')


puts "Finished creating #{Industry.all.count} industries"

puts "Creating some Career Positions!"

felix_career = CareerPosition.create(
  user_id: felix.id,
  job_title: teacher,
  job_function: education,
  company: andreanum,
  industry: education_industry
)

robert_career = CareerPosition.create(
  user_id: robert.id,
  job_title: lawyer,
  job_function: law,
  company: law_firm,
  industry: law_industry
)

hans_career = CareerPosition.create(
  user_id: hans.id,
  job_title: intern,
  job_function: law,
  company: law_firm,
  industry: law_industry
)

juan_career = CareerPosition.create(
  user_id: juan.id,
  job_title: junior_developer,
  job_function: it,
  company: apple,
  industry: consumer_electronics
)

jonas_career = CareerPosition.create(
  user_id: jonas.id,
  job_title: agile_coach,
  job_function: strategy,
  company: talent,
  industry: construction
)

career_position0 = CareerPosition.create(
  user_id: dale.id,
  job_function: job_function0,
  industry: industry0,
  company: company0,
  job_title: title0
  )
career_position1 = CareerPosition.create(
  user_id: damon.id,
  job_function: job_function1,
  industry: industry1,
  company: company1,
  job_title: title1
  )
career_position2 = CareerPosition.create(
  user_id: ben.id,
  job_function: job_function2,
  industry: industry2,
  company: company2,
  job_title: title2
  )

hannah_career1 = CareerPosition.create!(
  user_id: hannah.id,
  job_title: ux_designer,
  job_function: design,
  company: merck,
  industry: healthcare
)

hannah_career2 = CareerPosition.create!(
  user_id: hannah.id,
  job_title: ux_designer,
  job_function: job_function1,
  company: company1,
  industry: industry1
)


marcos_career_position = CareerPosition.create(
  user_id: marco.id,
  job_title: designer,
  company: stern,
  industry: automotive,
  job_function: it)

filippos_career_position = CareerPosition.create(
  user_id: filippo.id,
  job_title: analyst,
  company: hyve,
  industry: lighting,
  job_function: procurement)

puts "Finished creating #{CareerPosition.all.count} Career Positions"
puts ''

puts "Creating NO Meetings -- SEED UPDATED NEEDED FOR THIS!"
puts ''

hannah_meeting = Meeting.create!(
  status: 'accepted',
  meeting_date_time: DateTime.new(2020,3,10,6,0,0),
  suggested_activity: lunch,
  meeting_location: 'at your place',
  sender_id: juan.id,
  recipient_id: jonas.id
)

juan_meeting = Meeting.create!(
  status: 'pending',
  meeting_date_time: DateTime.new(2021,3,14,8,0,0),
  suggested_activity: running,
  meeting_location: 'at my place',
  sender_id: filippo.id,
  recipient_id: marco.id
)

meeting0 = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'Walk',
  meeting_location: '20 Bourke St',
  sender_id: marco.id,
  recipient_id: juan.id

  )
meeting1 = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,7,9,8,0,0),
  suggested_activity: 'Walk',
  meeting_location: '20 Bourke St',
  sender_id: jonas.id,
  recipient_id: filippo.id

  )
meeting2 = Meeting.create(
  status: 'pending',
  meeting_date_time: DateTime.new(2019,1,11,6,0,0),
  suggested_activity: 'Walk',
  meeting_location: '20 Bourke St',
  sender_id: jonas.id,
  recipient_id: marco.id
  )

run_meeting = Meeting.create(
  sender_id: marco.id,
  recipient_id: juan.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,10,6,0,0),
  suggested_activity: 'Jogging',
  meeting_location: '70 Dorcas St')

eating_meeting = Meeting.create(
  sender_id: jonas.id,
  recipient_id: filippo.id,
  status: 'pending',
  meeting_date_time: DateTime.new(2019,3,12,8,0,0),
  suggested_activity: 'Eating good food',
  meeting_location: 'McDonalds Swanston Street')

puts 'Finished creating #{Meeting.all.count} meetings'

puts "Creating some Skills!"

leadership = Skill.create(
  user_id: marco.id,
  name: 'Leadership')

uxdesign = Skill.create(
  user_id: marco.id,
  name: 'UX Design')

business = Skill.create(
  user_id: marco.id,
  name: 'Business Analysis')

ai = Skill.create(
  user_id: filippo.id,
  name: 'Artificial Intelligence')

skill0 = Skill.create(
  name: 'Leadership',
  user_id: dale.id
  )
skill1 = Skill.create(
  name: 'Time Management',
  user_id: damon.id
  )
skill2 = Skill.create(
  name: 'Adaptability',
  user_id: ben.id
  )

analysis = Skill.create(
  user_id: filippo.id,
  name: 'Analysis')

algebra = Skill.create(
  user_id: filippo.id,
  name: 'Algebra')

puts "Finished creating #{Skill.all.count} skills"

puts 'Creating some professional interests'

uxdesign = ProfessionalInterest.create(
  user_id: jonas.id,
  name: 'uxdesign')

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

dogs = ProfessionalInterest.create(
  user_id: marco.id,
  name: 'dogs')

finance = ProfessionalInterest.create(
  user_id: filippo.id,
  name: 'finance')

marketing = ProfessionalInterest.create(
  user_id: filippo.id,
  name: 'marketing')

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
