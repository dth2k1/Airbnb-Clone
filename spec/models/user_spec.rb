require 'rails_helper'

RSpec.describe User, type: :model do
  describe "association" do
    it { should have_one(:profile) }
    it { should have_many(:favorites) }
    it { should have_many(:favorited_properties).through(:favorites).source(:property) }
  end
end
