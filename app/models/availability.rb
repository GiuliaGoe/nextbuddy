class Availability < ApplicationRecord
  belongs_to :user, validate: true
end
