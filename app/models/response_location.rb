class ResponseLocation < ApplicationRecord
  belongs_to :response
  belongs_to :location
end
