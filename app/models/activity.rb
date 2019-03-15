class Activity < ApplicationRecord
  belongs_to :user

  Categories = {
    "have lunch" => "fas fa-utensils",
    "have a coffee" =>  "fas fa-coffee",
    "go swimming" =>  "fas fa-swimmer",
    "go running" =>  "fas fa-running",
    "walk the dog" =>  "fas fa-dog",
    "go jogging" =>  "fas fa-walking",
    "have a beer" =>  "fas fa-beer",
    "have a chat" =>  "fas fa-comments"
  }

  before_create :set_symbol

  def set_symbol
    self.symbol = Categories[self.description]
  end
end
