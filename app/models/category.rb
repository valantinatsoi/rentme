class Category < ApplicationRecord
  has_many :listings
  validates :name, inclusion: {
    in: %w[personal professional]
  }
end
