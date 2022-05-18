class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index

    @listings = policy_scope(Listing).where(user_id: params[:user_id]).order(created_at: :desc)
    # @listings = Listing

  end

  # GET /listings/1
  def show
    @listing = Listing.find(params[:id])
    authorize @listing
  end

  # GET /listings/new
  def new
    @category = Category.find(params[:category_id])
    @listing = Listing.new
    authorize @listing
  end

  # POST /listings
  def create
    @category = Category.find(params[:category_id])
    @listing = Listing.new(listing_params)
    @listing.category = @category
    @listing.user = current_user
    authorize @listing

    if @listing.save
      redirect_to profile_path, notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    authorize @listing
  end

  # PATCH/PUT /listings/1
  def update
    @listing = Listing.find(params[:id])
    authorize @listing
    if @listing.update(listing_params)
      redirect_to @listing, notice: 'Listing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /Listings/1
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    authorize @listing
    redirect_to profile_path, notice: 'Listing was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def listing_params
      params.require(:listing).permit(:user_id, :category_id, :fee, :slogan, :description)
    end
end
