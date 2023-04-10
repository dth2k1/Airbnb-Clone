require "rails_helper"

RSpec.describe "Users::Homes", type: :request do
  describe "GET /index" do
    it "success" do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
