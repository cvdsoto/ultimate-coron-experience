class Place < ApplicationRecord
  belongs_to :package, :optional => true

  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end
