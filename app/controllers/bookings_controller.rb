class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]

  def new
    @listing = Listing.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @listing = Listing.find(params[:id])
    @booking.listing = @listing

    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was succesfully updated"
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
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
