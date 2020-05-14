class ListingsController < ApplicationController
  def index
    @listings = Listing.all 
  end 

  def show
    @listing = Listing.find(params[:id])
  end

  def new
   @listing = Listing.new
  end

  def create
    Listing.create(listings_params)

    redirect_to root_path
  end

  private

  def listings_params
    params.require(:listing).permit(:name, :description, :price)
    #add images later
  end






end
