class Property < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :address1, presence: true
  validates :country, presence: true
end
