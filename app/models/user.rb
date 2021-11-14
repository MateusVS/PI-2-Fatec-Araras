class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bim_calculation_histories, dependent: :destroy, inverse_of: :user

  validates :name, presence: true
end
