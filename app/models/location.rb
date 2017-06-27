class Location < ApplicationRecord
  belongs_to :response
  has_many :languages 
end
