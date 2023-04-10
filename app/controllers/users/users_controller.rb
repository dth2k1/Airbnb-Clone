class Users::UsersController < ApplicationController
  before_action :load_user, only: :show

  def show
    render json: @user.to_json, status: 200
  end

  protected

  def load_user
    @user = User.find(params[:id])
  end
end
