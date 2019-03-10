class Facility < ApplicationRecord
  has_many :animals
  belongs_to :location
end
