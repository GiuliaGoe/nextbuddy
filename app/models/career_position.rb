class CareerPosition < ApplicationRecord
  belongs_to :industry
  belongs_to :company
  belongs_to :job_title
  belongs_to :job_function
  belongs_to :user
  # accepts_nested_attributes_for :industry, :company, :job_title, :job_function
end
