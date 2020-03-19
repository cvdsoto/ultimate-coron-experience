class PackagesController < ApplicationController
before_action :check_for_admin, :only => [:new, :edit, :destroy]

  def index
    # sort by created at
    @packages = Package.all.order('created_at')
  end

  def new
    @package = Package.new
  end

  def create
    package = Package.create package_params
    redirect_to package
  end

  def edit
    @package = Package.find params[:id]
  end

  def update
    package = Package.find params[:id]
    package.update package_params
    redirect_to package
  end

  def show
    @package = Package.find params[:id]
  end

  def destroy
    package = Package.find params[:id]
    package.destroy
    redirect_to packages_path
  end

  private
  def package_params
    params.require(:package).permit(:name, :time, :price, place_ids:[])
  end

end
