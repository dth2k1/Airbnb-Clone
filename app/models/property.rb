class Property < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :address1, presence: true
  validates :country, presence: true

  has_one_attached :avatar
  has_many_attached :image_details
  validates :avatar, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(5.megabytes) }
  validates :image_details, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(5.megabytes) }

  before_create :set_avatar

  private

  def set_avatar
    self.avatar.attach(io: File.open(File.join(Rails.root,'app/assets/images/982681.jpg')), filename: '982681') unless self.avatar.attached.present?
  end
end
