FactoryGirl.define do
  factory :location do
  city "London"
  after(:create) do |location|
    response = FactoryGirl.create(:response)
    responselocation = FactoryGirl.create(:responselocation, response_id: response.id, location_id: location.id)
    locationlanguage = FactoryGirl.create(:locationlanguage, location_id: location.id)
  end
  end
end
