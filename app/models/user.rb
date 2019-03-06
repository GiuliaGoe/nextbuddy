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
  has_many :activities
  has_many :professional_interests
  has_many :skills

  include PgSearch
  # multisearchable against: [ :address, :radius ]
  pg_search_scope :global_search_user_and_user_characteristics,

  against: [:address, :radius],
  associated_against: {
    activities: [:description],
    companies: [:name],
    industries: [:name],
    job_functions: [:name],
    job_titles: [:name],
    professional_interests: [:name],
    skills: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
end
