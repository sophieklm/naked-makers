class Location < ApplicationRecord
  belongs_to :response
  has_many :response_locations
  has_many :responses, through: :response_locations
end
