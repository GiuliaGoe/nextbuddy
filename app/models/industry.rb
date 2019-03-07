class Industry < ApplicationRecord
  has_many :career_positions
  has_many :users, through: :career_position
end
