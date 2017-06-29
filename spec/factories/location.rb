FactoryGirl.define do
  factory :location do
  before(:create) do |location|
    response = FactoryGirl.create(:response)
    location.response_id = response.id
  end
  city "London"
  after(:create) do |location|
    responselocation = FactoryGirl.create(:responselocation, response_id: location.response_id, location_id: location.id)
    locationlanguage = FactoryGirl.create(:locationlanguage, location_id: location.id)
  end
  end
end
