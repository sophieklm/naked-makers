class ResponseLanguage < ApplicationRecord
  belongs_to :response
  belongs_to :language
end
