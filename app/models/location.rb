class Location < ApplicationRecord
  has_many :response_locations
  has_many :responses, through: :response_locations
end
