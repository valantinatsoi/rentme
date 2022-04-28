class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  validates :fee, :slogan, :description, presence: true
end
