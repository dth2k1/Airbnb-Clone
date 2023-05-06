class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  after_create :set_profile
  has_many :favorites, dependent: :destroy
  has_many :favorited_properties, through: :favorites, source: :property
  private

  def set_profile
    self.profile = Profile.new
    save!
  end
end
