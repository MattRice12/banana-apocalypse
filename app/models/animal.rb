class Animal < ApplicationRecord
  belongs_to :facility
  belongs_to :category
end
