class Category < ApplicationRecord
  has_many :listings
  validates :type, inclusion: {
    in: %w[Personal Professional]
  }
end
