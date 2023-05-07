require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe "association" do
    it { should belong_to(:user) }
    it { should belong_to(:property) }
  end
  
  describe "validate" do
    it { should validate_presence_of(:reservation_start_date) }
    it { should validate_presence_of(:reservation_end_date) }
  end
end
