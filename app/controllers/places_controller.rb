class PlacesController < ApplicationController
before_action :check_for_admin, :only => [:new, :edit, :destroy]

  def index
    @places = Place.all.order('created_at')
  end

  def new
    @place = Place.new
  end

  def create
    place = Place.new place_params
    #to upload cloudinary link in database
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      place.image = req["public_id"]
      place.save
    end
    #checks if there was a package selected
    if params[:place][:package_id] != ''
      package = Package.find params[:place][:package_id]
      package.places << place
    end
    redirect_to place
  end

  def edit
    @place = Place.find params[:id]
  end

  def update
    place = Place.find params[:id]
    #to upload cloudinary link in database
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      place.image = req["public_id"]
    end
    place.update_attributes place_params
    place.save
    redirect_to place
  end

  def show
    @place = Place.find params[:id]
  end

  def destroy
    place = Place.find params[:id]
    place.destroy
    redirect_to places_path
  end

  private
  def place_params
    params.require(:place).permit(:name, :location, :image, :package_id)
  end
end
