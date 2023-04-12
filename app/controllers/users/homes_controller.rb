class Users::HomesController < ApplicationController
  def index
    @properties = Property.all
  end
end
