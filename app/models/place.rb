class Place < ApplicationRecord
  belongs_to :package, :optional => true
end
