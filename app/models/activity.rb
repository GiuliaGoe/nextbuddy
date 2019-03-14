class Activity < ApplicationRecord
  belongs_to :user

  Categories = {
    have_lunch: "fa-utensils",
    have_a_coffee: "fa-coffee",
    go_swimming: "fa-swimmer",
    go_running: "fa-running",
    walk_the_dog: "fa-dog",
    go_jogging: "fa-walking",
    have_a_beer: "fa-beer",
    blow_bubbles: "fa-comment"
  }

  after_create :set_symbol

  def set_symbol
    self.symbol = Categories[self.description.to_sym]
  end
end
