class Availability < ApplicationRecord
  belongs_to :user, validate: true

  def available_time_periods
    case period_of_day
    when "morning"
      return ['7:00', '7:30', '8:00', '8:30', '9:00', '9:30']
    when "noon"
      return ['11:00', '11:30', '12:00', '12:30', '13:00', '13:30']
    when "afternoon"
      return ['14:00', '14:30', '15:00', '15:30', '16:00', '16:30']
    when "evening"
      return ['17:00', '17:30', '18:00', '18:30', '19:00', '19:30']
    end
  end

  def available_days
    first_ava = Date.today.next_occurring(day_of_week.downcase.to_sym)
    second_ava = first_ava + 7.days
    return [first_ava, second_ava]
  end
end
