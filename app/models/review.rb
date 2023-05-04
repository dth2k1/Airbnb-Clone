class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true, counter_cache: true
  validates :title, presence: true
  validates :body, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

  after_commit :update_average_rating

  private

  def update_average_rating
    reviewable.update!(average_rating: reviewable.reviews.average(:rating))
  end
end
