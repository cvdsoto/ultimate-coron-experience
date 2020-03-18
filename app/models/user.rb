class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :itineraries
  has_many :packages, :through => :itineraries

  validates :email, :presence => true, :uniqueness => true
end
