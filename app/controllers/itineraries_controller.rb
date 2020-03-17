class ItinerariesController < ApplicationController
  def index
    if @current_user.present? && @current_user.admin?
      @itineraries = Itinerary.all
    else
      @user = User.where("email = ?", @current_user.email)
    end
  end

  def new
  end

  def edit
  end

  def show
  end
end
