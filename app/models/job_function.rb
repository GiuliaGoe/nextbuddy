class JobFunction < ApplicationRecord
  belongs_to :career_position
  has_many :users, through: :career_position
  # include PgSearch
  # pg_search_scope :global_search_job_function_and_user_characteristics,
  #   against: [ :name ],
  #   associated_against: {
  #     # activity: [ :description ],
  #     # availability: [ :day_of_week, :period_of_day ],
  #     # company: [ :name ],
  #     # industry: [ :name ],
  #     user: [ :address, :radius ],
  #     # job_title: [ :name ],
  #     # professional_interest: [ :name ],
  #     # skill: [ :name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  # multisearchable against: [ :name ]
  #   pg_search_scope :search_by_name,
  #     against: [ :name ],
  #     using: {
  #       tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #     }
end
