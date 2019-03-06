class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sent_meetings, class_name: "Meeting", foreign_key: :sender_id
  has_many :received_meetings, class_name: "Meeting", foreign_key: :recipient_id
  has_many :career_positions
  has_many :job_functions, through: :career_positions
  has_many :job_titles, through: :career_positions
  has_many :companies, through: :career_positions
  has_many :industries, through: :career_positions

  include PgSearch
    # multisearchable against: [ :address, :radius ]
  pg_search_scope :global_search_user_and_user_characteristics,
  against: [:address, :radius],
  associated_against: {
    # activity: [ :description ],
    # availability: [ :day_of_week, :period_of_day ],
    # company: [ :name ],
    # industry: [ :name ],
    job_functions: [:name],
    # job_title: [ :name ],
    # professional_interest: [ :name ],
    # skill: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }
    # pg_search_scope :search_by_address_and_radius,
    #   against: [ :address, :radius ],
    #   using: {
    #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
    #   }
end
