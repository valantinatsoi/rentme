class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user

    if @review.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end
