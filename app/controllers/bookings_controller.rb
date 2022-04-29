class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]

  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    authorize @booking

    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    authorize @booking
  end

  def update
    if @booking.update(booking_params)
      authorize @booking
      redirect_to profile_path, notice: "Booking was succesfully updated"
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to profile_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:listing_id, :user_id, :amount, :status, :requirements)
  end
end
