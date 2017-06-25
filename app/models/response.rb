class Response < ApplicationRecord
  has_one :location
  has_many :response_languages
  has_many :languages, through: :response_languages
end
