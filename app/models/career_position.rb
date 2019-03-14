class CareerPosition < ApplicationRecord
  # belongs_to :industry
  belongs_to :company, dependent: :destroy
  belongs_to :job_title, dependent: :destroy
  # belongs_to :job_function
  belongs_to :user
  # accepts_nested_attributes_for :industry, :company, :job_title, :job_function
end
