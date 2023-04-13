class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_distance current_property
    Geocoder::Calculations.distance_between([self.longitude, self.latitude], [current_property.longitude, current_property.latitude]).to_kilometers
  end
end
