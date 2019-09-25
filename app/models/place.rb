class Place < ApplicationRecord
  belongs_to :user
  has_many :comment
  
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true
end
