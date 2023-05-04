class Property < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :address1, presence: true
  validates :country, presence: true

  has_many_attached :images
  validates :images, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(5.megabytes) }

  geocoded_by :address
  before_create :set_images

  #TODO change code to line one
  # after_validation :geocode, if: ->(obj){obj.address1.present? and obj.address1_changed? }
  after_validation :geocode, if: ->(obj){ obj.longitude.blank? and obj.latitude.blank? }

  def address
    # [address1, address2, city, state, country].compact.join(', ')
    [state, country].compact.join(', ')
  end

  private

  def set_images
    self.images.attach(io: File.open(File.join(Rails.root,'app/assets/images/982681.jpg')), filename: '982681')
  end
end
