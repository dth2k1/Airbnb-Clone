require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe "association" do
    it { should belong_to(:user) }
    it { should belong_to(:property) }
  end
end
