class Package < ApplicationRecord
  has_many :places
  has_and_belongs_to_many :itineraries

  accepts_nested_attributes_for :places
end
