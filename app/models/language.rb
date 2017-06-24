class Language < ApplicationRecord
  validates_uniqueness_of :name
  has_many :response_languages
  has_many :responses, through: :response_languages
end
