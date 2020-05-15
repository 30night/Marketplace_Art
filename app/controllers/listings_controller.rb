class ListingsController < ApplicationController
  # before_action :authenticate_user!x
  
  
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
    @listing = Listing.new(listings_params) 
    @listing.save
    # redirect_to root_path
    # @listing = Listing.create

    redirect_to @listing
  end

   def edit
    @listing = Listing.find(params[:id])
   end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listings_params)
    redirect_to @listing
    else
    render 'edit'
    end
  end

  private

  def listings_params
    params.require(:listing).permit(:name, :description, :price)
    #add images later
  end




end
