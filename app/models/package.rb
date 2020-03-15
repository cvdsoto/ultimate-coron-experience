class Package < ApplicationRecord
  has_many :places
  has_and_belongs_to_many :itineraries
end
