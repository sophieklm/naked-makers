require 'rails_helper'

RSpec.describe LocationsController, type: :controller do

  # describe "Post #locations/create" do
  #   it "returns http redirect" do
  #     post :create
  #     expect(response).to have_http_status(302)
  #   end
  # end

  describe "Post #locations/create" do
    it "creates a new location if it doesn't exist" do
      expect { FactoryGirl.create(:location)}.to change(Location, :count).by(1)
    end
  end

  describe "Post #locations/create" do
    it "creates a new response location" do
      expect { FactoryGirl.create(:location)}.to change(ResponseLocation, :count).by(1)
    end
  end

  describe "Post #locations/create" do
    it "creates a new location language" do
      expect { FactoryGirl.create(:location)}.to change(LocationLanguage, :count).by(1)
    end
  end
  #
  # describe "Post #responses/create" do
  #   it "does not create a response if no params" do
  #     expect { post :create, params: { location: { city: ""}} }.to change(Location, :count).by(0)
  #   end
  # end

end
