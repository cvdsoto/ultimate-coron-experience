class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
