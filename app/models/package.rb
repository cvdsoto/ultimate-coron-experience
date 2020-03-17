class Package < ApplicationRecord
  has_many :places, dependent: :nullify
  has_and_belongs_to_many :itineraries
end
