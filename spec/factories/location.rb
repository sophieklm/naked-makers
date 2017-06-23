FactoryGirl.define do
  factory :location do
  before(:create) do |location|
    response = FactoryGirl.create(:response)
    location.response_id = response.id
  end
    city "London"
  end
end
