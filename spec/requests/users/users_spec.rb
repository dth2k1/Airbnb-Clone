require "rails_helper"

RSpec.describe "Users::Users", type: :request do
  let!(:user) { create(:user) }
  describe "GET /show" do
    let(:headers) do
      { "ACCEPT" => "application/json"}
    end
    context "with valid params" do
      it "sucess" do
        get users_user_url(user), headers: headers
        expect(response.status).to eq 200
      end

      it "not found" do
        get users_user_url(id: "invalid"), headers: headers
        expect(response.status).to eq 404
      end
    end
  end

end
