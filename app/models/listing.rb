class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings, depndent: :destroy
  validates :fee, :slogan, :description, presence: true
end
