class BimCalculationHistory < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :user_id
    validates :height, numericality: { :greater_than => 0.00 }
    validates :width,  numericality: { :greater_than => 0.00 }
  end
end
