require 'rails_helper'

RSpec.describe ResponsesController, type: :controller do

  describe "GET #responses/new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "Post #responses/create" do
    it "returns http redirect" do
      post :create, params: { response: { city: "London", languages: ["Ruby"] }}
      expect(response).to have_http_status(302)
    end
  end

end
