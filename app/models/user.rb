class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bim_calculation_histories, dependent: :destroy

  validates :name, presence: true
end
