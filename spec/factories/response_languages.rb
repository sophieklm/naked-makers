FactoryGirl.define do
  factory :response_language do
    before(:create) do |response_language|
      response = FactoryGirl.create(:response)
      response_language.response_id = response.id
    end
      language
  end
end
