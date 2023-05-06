require 'rails_helper'

RSpec.describe "Users::Favorites", type: :request do
  let(:headers) do
    { "ACCEPT" => "application/json" }
  end
  let(:user) { create(:user) }
  let(:property) { create(:property) }

  before do
    sign_in user
  end

  describe "POST create" do
    let(:params) do
      {
        property_id: property.id
      }
    end

    it "creates a new favorite" do
      expect {
        post users_favorites_path, params: {favorite: params}, headers: headers
      }.to change(Favorite, :count).by(1)
      expect(response.status).to eq 201
    end
  end

  describe "DELETE destroy" do
    it "deletes a favorite" do
      favorite = create(:favorite, user: user, property: property)
      expect {
        delete users_favorite_path(favorite), headers: headers
      }.to change(Favorite, :count).by(-1)
      expect(response.status).to eq 204
    end
  end
end
