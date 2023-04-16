class Users::HomesController < ApplicationController
  def index
    @properties = Property.all
  end

  # def get_distance
  #   if params[:latitide].blank? || params[:longitude].blank?
  #     render json: {
  #       success: false
  #     }
  #   else
  #     data = Property.all.map do |property|
  #             {
  #               Geocoder::Calculations.distance_between([property.latitude, property.longitude], [params[:latitide].to_f, params[:longitude].to_f])
  #             }
  #           end
  #     render json: {
  #       success: true,
  #       data: data
  #     }
  #     end
  #   end
  # end
end
