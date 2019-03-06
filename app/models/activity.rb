class Activity < ApplicationRecord
  belongs_to :user

  include PgSearch
  pg_search_scope :global_search_activity_and_user_characteristics,
    against: [ :description ],
    associated_against: {
      user: [ :address, :radius ],
      availability: [ :day_of_week, :period_of_day ],
      company: [ :name ],
      industry: [ :name ],
      job_function: [ :name ],
      job_title: [ :name ],
      professional_interest: [ :name ],
      skill: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
  # multisearchable against: [ :description ]
  # pg_search_scope :search_by_description,
  #   against: [ :description ],
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }
end
