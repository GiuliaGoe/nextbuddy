# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"
User.destroy_all
Meeting.destroy_all
JobTitle.destroy_all
JobFunction.destroy_all
Industry.destroy_all
Company.destroy_all
CareerPosition.destroy_all
ProfessionalInterest.destroy_all
Skill.destroy_all
Activity.destroy_all
Availability.destroy_all


puts "Creating Users"
jonas = User.create!(
  first_name: 'Jonas',
  last_name: 'Japing',
  email: 'jonasjaping@gmail.com',
  password: '123456',
  photo: 'jonas',
  address: 'Dorcas Street 70, Melbourne',
  radius: 700,
  professional_goal: 'my goal is to become riiiiiiich.',
  bio: 'i am really cool'
)

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

puts "Created #{User.all.length} users"

puts "Creating some Activities!"

lunch = Activity.create!(
  description: 'lunch',
  user: jonas
)

running = Activity.create!(
  description: 'running',
  user: juan
)

lunch = Activity.create!(
  description: 'lunch',
  user: juan
)

swimming = Activity.create!(
  description: 'swimming',
  user: hannah
)

swimming = Activity.create!(
  description: 'swimming',
  user: jonas
)

jogging = Activity.create(
  user: marco,
  description: 'Jogging')

walking = Activity.create(
  user: marco,
  description: 'Walking')

coffee = Activity.create(
  user: marco,
  description: 'Have a coffee')

running = Activity.create(
  user: filippo,
  description: 'Go running')

tea = Activity.create(
  user: filippo,
  description: 'Drink tea')

activity0 = Activity.create(
  description: 'Blow bubbles',
  user: dale
  )
activity1 = Activity.create(
  description: 'Drink a Beer',
  user: damon
  )
activity2 = Activity.create(
  description: 'Lunch',
  user: ben
  )

walkthedog = Activity.create(
  user: filippo,
  description: 'Walk the dog')

puts "Finished creating #{Activity.all.count} activities"

puts "Creating some Availabilities!"

afternoon = Availability.create!(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user: jonas
)

morning = Availability.create!(
  day_of_week: 'Wednesday',
  period_of_day: 'morning',
  user: jonas
)

afternoon = Availability.create!(
  day_of_week: 'Monday',
  period_of_day: 'afternoon',
  user: juan
)

availability0 = Availability.create(
  day_of_week: 'Monday',
  period_of_day: 'noon',
  user: dale
  )
availability1 = Availability.create(
  day_of_week: 'Tuesday',
  period_of_day: 'afternoon',
  user: damon
  )
availability2 = Availability.create(
  day_of_week: 'Friday',
  period_of_day: 'evening',
  user: ben
  )


morning = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user: hannah
)

noon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user: jonas
)

noon = Availability.create!(
  day_of_week: 'Friday',
  period_of_day: 'morning',
  user: juan
)

marco_avail1 = Availability.create(
  user: marco,
  day_of_week: 'Tuesday',
  period_of_day: 'Morning' )

marco_avail2 = Availability.create(
  user: marco,
  day_of_week: 'Friday',
  period_of_day: 'Evening' )

filippo_avail1 = Availability.create(
  user: filippo,
  day_of_week: 'Monday',
  period_of_day: 'Noon' )

filippo_avail2 = Availability.create(
  user: filippo,
  day_of_week: 'Thursday',
  period_of_day: 'Afternoon' )

puts "Created #{Availability.all.count} availabilities"

puts "Creating some Job Titles!"

agile_coach = JobTitle.create!(
  name: 'Agile Coach',
)

junior_developer = JobTitle.create!(
  name: 'Junior Developer',
)

ux_designer = JobTitle.create!(
  name: 'UX Designer',
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

mckinsey = Company.create!(
  name: 'McKinsey',
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

puts "Finished creating #{Company.all.count} Companies"

puts "Creating some Job Functions!"

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

juan_career = CareerPosition.create(
  user_id: 2,
  job_title: junior_developer,
  job_function: it,
  company: apple,
  industry: consumer_electronics
)

jonas_career = CareerPosition.create(
  user_id: 1,
  job_title: agile_coach,
  job_function: strategy,
  company: mckinsey,
  industry: construction
)

career_position0 = CareerPosition.create(
  user_id: 3,
  job_function: job_function0,
  industry: industry0,
  company: company0,
  job_title: title0
  )
career_position1 = CareerPosition.create(
  user_id: 4,
  job_function: job_function1,
  industry: industry1,
  company: company1,
  job_title: title1
  )
career_position2 = CareerPosition.create(
  user_id: 5,
  job_function: job_function2,
  industry: industry2,
  company: company2,
  job_title: title2
  )

hannah_career = CareerPosition.create!(
  user_id: 6,
  job_title: ux_designer,
  job_function: design,
  company: merck,
  industry: healthcare
)

marcos_career_position = CareerPosition.create(
  user_id: 7,
  job_title: designer,
  company: stern,
  industry: automotive,
  job_function: it)

filippos_career_position = CareerPosition.create(
  user_id: 8,
  job_title: analyst,
  company: hyve,
  industry: lighting,
  job_function: procurement)

puts "Finished creating #{CareerPosition.all.count} Career Positions"
puts ''
puts "Creating NO Meetings -- SEED UPDATED NEEDED FOR THIS!"
puts ''

# hannah_meeting = Meeting.create!(
#   status: 'accepted',
#   meeting_date_time: DateTime.new(2020,3,10,6,0,0),
#   suggested_activity: lunch,
#   meeting_location: 'at your place',
#   sender_id: 1,
#   recipient_id: 2
# )

# juan_meeting = Meeting.create!(
#   status: 'pending',
#   meeting_date_time: DateTime.new(2021,3,14,8,0,0),
#   suggested_activity: running,
#   meeting_location: 'at my place',
#   sender_id: 3,
#   recipient_id: 4
# )

# meeting0 = Meeting.create(
#   status: 'pending',
#   meeting_date_time: DateTime.new(2019,3,10,6,0,0),
#   suggested_activity: 'Walk',
#   meeting_location: '20 Bourke St',
#   sender_id: 4,
#   recipient_id: 5

#   )
# meeting1 = Meeting.create(
#   status: 'pending',
#   meeting_date_time: DateTime.new(2019,7,9,8,0,0),
#   suggested_activity: 'Walk',
#   meeting_location: '20 Bourke St',
#   sender_id: 6,
#   recipient_id: 7

#   )
# meeting2 = Meeting.create(
#   status: 'pending',
#   meeting_date_time: DateTime.new(2019,1,11,6,0,0),
#   suggested_activity: 'Walk',
#   meeting_location: '20 Bourke St',
#   sender_id: 5,
#   recipient_id: 7

#   )

# run_meeting = Meeting.create(
#   sender_id: 8,
#   recipient_id: 5,
#   status: 'pending',
#   meeting_date_time: DateTime.new(2019,3,10,6,0,0),
#   suggested_activity: 'Jogging',
#   meeting_location: '70 Dorcas St')

# eating_meeting = Meeting.create(
#   sender_id: 5,
#   recipient_id: 8,
#   status: 'pending',
#   meeting_date_time: DateTime.new(2019,3,12,8,0,0),
#   suggested_activity: 'Eating good food',
#   meeting_location: 'McDonalds Swanston Street')

# puts 'Finished creating #{Meeting.all.count} meetings'

puts "Creating some Skills!"

leadership = Skill.create(
  user: marco,
  name: 'Leadership')

uxdesign = Skill.create(
  user: marco,
  name: 'UX Design')

business = Skill.create(
  user: marco,
  name: 'Business Analysis')

ai = Skill.create(
  user: filippo,
  name: 'Artificial Intelligence')

skill0 = Skill.create(
  name: 'Leadership',
  user: dale
  )
skill1 = Skill.create(
  name: 'Time Management',
  user: damon
  )
skill2 = Skill.create(
  name: 'Adaptability',
  user: ben
  )

analysis = Skill.create(
  user: filippo,
  name: 'Analysis')

algebra = Skill.create(
  user: filippo,
  name: 'Algebra')

puts "Finished creating #{Skill.all.count} skills"

puts 'Creating some professional interests'

uxdesign = ProfessionalInterest.create(
  user: marco,
  name: 'uxdesign')

professional_interest0 = ProfessionalInterest.create(
  name: 'RoR',
  user: dale
  )
professional_interest1 = ProfessionalInterest.create(
  name: 'Ruby',
  user: damon
  )
professional_interest2 = ProfessionalInterest.create(
  name: 'CSS',
  user: ben
  )

dogs = ProfessionalInterest.create(
  user: marco,
  name: 'dogs')

finance = ProfessionalInterest.create(
  user: filippo,
  name: 'finance')

marketing = ProfessionalInterest.create(
  user: filippo,
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
