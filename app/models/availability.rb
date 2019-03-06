class Availability < ApplicationRecord
  belongs_to :user

  include PgSearch
  # multisearchable against: [ :day_of_week, :period_of_day ]
  # pg_search_scope :search_by_day_of_week_and_period_of_day,
  #   against: [ :day_of_week, :period_of_day ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
end
