class LocationLanguage < ApplicationRecord
  belongs_to :location
  belongs_to :language
end
