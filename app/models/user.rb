class User < ApplicationRecord
  include PgSearch
  # Include default devise modules. Others available are:
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #  :confirmable, :lockable and :timeoutable, :trackable
  devise :database_authenticatable, :validatable, :registerable,
         :recoverable, :rememberable,
         :omniauthable, omniauth_providers: %i[linkedin]

  has_many :sent_meetings, class_name: "Meeting", foreign_key: :sender_id
  has_many :received_meetings, class_name: "Meeting", foreign_key: :recipient_id
  has_many :career_positions
  has_many :job_functions, through: :career_positions
  has_many :job_titles, through: :career_positions
  has_many :companies, through: :career_positions
  has_many :industries, through: :career_positions
  has_many :activities
  has_many :availabilities
  has_many :professional_interests
  has_many :skills
  # accepts_nested_attributes_for :career_positions, :professional_interests, :availabilities, :activities, :skills

  def current_title
    self.career_positions.first.job_title
  end

  def current_company
    self.career_positions.first.company
  end

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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name # assuming the user model has a name
      user.photo = auth.info.picture_url # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.linkedin_data"] && session["devise.linkedin_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
