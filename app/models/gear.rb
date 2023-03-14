class Gear < ApplicationRecord
  validates :name, presence: true
  validates :brand, presence: true
  validates :category, presence: true
  validates :price, presence: true
  belongs_to :user
  has_many :reservations
end
