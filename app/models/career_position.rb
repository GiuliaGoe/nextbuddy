class CareerPosition < ApplicationRecord
  belongs_to :job_title
  belongs_to :industry
  belongs_to :job_function
  belongs_to :company
end
