class ItinerariesController < ApplicationController
  def index
    if @current_user.present? && @current_user.admin?
      @itineraries = Itinerary.all
    else
      @user = User.where("email = ?", @current_user.email)
    end
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    itinerary = Itinerary.create itinerary_params
    redirect_to itineraries_path
  end

  def edit
    @itinerary = Itinerary.find params[:id]
    @user = params[:user_id]
  end

  def update
    itinerary = Itinerary.find params[:id]
    itinerary.update itinerary_params
    redirect_to itineraries_path
  end

  def show
  end

  def destroy
    itinerary = Itinerary.find params[:id]
    itinerary.destroy
    redirect_to itineraries_path
    # user = User.find params[:user_id]
    # itinerary = user.itineraries.find params[:id]
    # count_itinerary = Itinerary.find params[:id]
    # # raise 'hell'
    # user.itineraries.delete(itinerary
  end

  private
  def itinerary_params
    params.require(:itinerary).permit(:date, :user_ids, package_ids:[])
  end
end
