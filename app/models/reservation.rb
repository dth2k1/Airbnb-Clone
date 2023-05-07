class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :reservation_end_date, presence: true
  validates :reservation_start_date, presence: true
end
