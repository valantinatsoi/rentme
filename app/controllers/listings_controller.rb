class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  # GET /listings/1
  def show
    @listing = Listing.find(params[:id])
  end

  # GET /listings/new
  def new
    @category = Category.find(params[:user_id])
    @listing = Listing.new
  end

  # POST /listings
  def create
    @category = Category.find(params[:user_id])
    @listing = Listing.new(listing_params)
    @category.listing = @listing

    if @listing.save
      redirect_to profile_path, notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  # PATCH/PUT /listings/1
  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to @listing, notice: 'Listing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /Listings/1
  def destroy
    @listing.destroy
    redirect_to listings_url, notice: 'Listing was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:user_id, :category_id, :fee, :slogan, :description)
    end
end
