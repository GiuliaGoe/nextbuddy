class Industry < ApplicationRecord
  belongs_to :career_position
  has_many :users, through: :career_position
end
