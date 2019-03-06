class Skill < ApplicationRecord
  belongs_to :user

  include PgSearch
  # multisearchable against: [ :name ]
  #   pg_search_scope :search_by_name,
  #     against: [ :name ],
  #     using: {
  #       tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #     }
end
