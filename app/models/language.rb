class Language < ApplicationRecord
  validates_uniqueness_of :name
  has_many :response_languages
  has_many :responses, through: :response_languages
  has_many :location_languages
  has_many :location, through: :location_languages
end
