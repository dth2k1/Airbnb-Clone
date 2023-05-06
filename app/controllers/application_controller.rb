class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :set_locale

  if Rails.env.production?

  rescue_from Exception, with: :rescue_500
  rescue_from ActionController::RoutingError, with: :rescue_404
  rescue_from ActiveRecord::RecordNotFound, with: :rescue_404
  rescue_from ActionController::ParameterMissing, with: :rescue_400
  # rescue_from NotFound, with: :rescue_404
  # rescue_from Forbidden, with: :rescue_403
  end

  def rescue_400(exception)
    render json: { error: 'bad request' }, status: 400
  end

  def rescue_403(exception)
    render json: { error: 'not authorization' }, status: 403
  end

  def rescue_404(exception)
    render json: { error: 'not found' }, status: 404
  end

  def rescue_500(exception)
    render json: { error: 'internal server error' }, status: 500
  end

  protected

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
