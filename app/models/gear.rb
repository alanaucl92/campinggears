class Gear < ApplicationRecord
  validates :name, presence: true
  validates :brand, presence: true
  validates :category, presence: true
  validates :price, presence: true
  belongs_to :user
  has_many :reservations
  has_many :reviews, through: :reservations
  has_one_attached :photo
  validates :photo, presence: true

  before_destroy :check_for_reservations

  private
  def check_for_reservations
    unless reservations.empty?
      errors.add(:base, 'Cannot delete gear with existing reservations')
      throw :abort
    end
  end
end
