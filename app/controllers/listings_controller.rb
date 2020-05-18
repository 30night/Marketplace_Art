class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :authorize!, only: [:edit, :update, :destroy]
  
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
    @listing.user = current_user
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

  def authorize!
    @listing = current_user.listings.find_by_id(params[:id])
    if @listing.nil? 
    redirect_to listings_path
    end

  end


end
