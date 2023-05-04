require 'rails_helper'
require "money-rails/test_helpers"
RSpec.describe Property, type: :model do
  describe "validates" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:country) }
    it { should validate_presence_of(:address1) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { is_expected.to monetize(:price).allow_nil}
  end

  describe "association" do
    it { should have_many(:reviews) }
  end
end
