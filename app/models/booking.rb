class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  validates :status, default: false
  validates :amount, presence: true
end
