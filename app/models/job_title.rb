class JobTitle < ApplicationRecord
  has_many :users, through: :career_position
  has_many :career_positions
end
