class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :confirmable, :lockable and :timeoutable, :trackable
  devise :database_authenticatable, :validatable, :registerable,
         :recoverable, :rememberable,
         :omniauthable, omniauth_providers: %i[linkedin]

  has_many :sent_meetings, class_name: "Meeting", foreign_key: :sender_id
  has_many :received_meetings, class_name: "Meeting", foreign_key: :recipient_id

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.first_name = auth.info.first_name
    user.last_name = auth.info.last_name   # assuming the user model has a name
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
