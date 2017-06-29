class Response < ApplicationRecord
  has_many :response_languages
  has_many :languages, through: :response_languages
end
