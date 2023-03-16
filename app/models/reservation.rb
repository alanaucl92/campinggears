class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :reserve_from, presence: true, comparison: { less_than: :reserve_to}
  validates :reserve_to, presence: true
  validates :reserve_status, presence: true, inclusion: { in: %w(Reserved Cancelled) }
  validates :payment_status, presence: true, inclusion: { in: %w(Outstanding Paid) }
  validate :date_cannot_be_in_the_past
  paginates_per 5

  def date_cannot_be_in_the_past
    if reserve_from.present? && reserve_from < Date.today
      errors.add(:reserve_from, "can't be in the past")
    end
  end

  # private

  # def end_time_is_after_start_time
  #   return if reserve_from.blank? || reserve_to.blank?

  #   if reserve_to < reserve_from
  #     errors.add(:reserve_to, "cannot be before the start time")
  #   end
  # end
end
