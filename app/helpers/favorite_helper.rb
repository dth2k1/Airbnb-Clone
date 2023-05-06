module FavoriteHelper
  def check_favorite_current_user? property
    Favorite.where(user: current_user, property: property).present?
  end

  def get_current_favorite_record property
    Favorite.where(user: current_user, property: property)&.last&.id
  end
end
