class Location < ApplicationRecord
  has_many :facilities
  has_many :animals, through: :facilities
end
