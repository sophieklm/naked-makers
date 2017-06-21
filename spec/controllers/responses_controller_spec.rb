require 'rails_helper'

RSpec.describe ResponsesController, type: :controller do

  describe "GET #responses/new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
