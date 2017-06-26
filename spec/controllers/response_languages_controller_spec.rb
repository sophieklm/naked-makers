require 'rails_helper'

RSpec.describe ResponseLanguagesController, type: :controller do

  let(:language1) { create(:language, {name: "Language1"}) }
  let(:language2) { create(:language, {name: "Language2"}) }
  let(:response) { create(:response)}
  let(:response_language) { create(:response_language, {language: language1}) }

  describe "Post #responses/create" do
    it "returns http redirect" do
      expect(response_language.language_id).to eq(language1.id)
    end
  end

  describe "Post #responses/link_language" do
    it "returns http redirect" do
      expect(response_language.language_id).to eq(language1.id)
    end
  end
end
