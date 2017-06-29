require 'rails_helper'

RSpec.describe Location, type: :model do

  it 'should have a city' do
    location = create(:location)
    expect(location.city).to eq("London")
  end

end
