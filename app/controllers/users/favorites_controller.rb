class Users::FavoritesController < ApplicationController

  def create
    @favorite = current_user.favorites.build(favorite_params)
    if @favorite.save
      respond_to do |format|
        format.json do
          render json: @favorite.to_json, status: :created
        end
      end
    else
      respond_to do |format|
        format.json do
          render json: { error: e.message }.to_json, status: 404
        end
      end
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy!

    respond_to do |format|
      format.json do
        render json: @favorite.to_json, status: 204
      end
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:property_id)
  end
end
