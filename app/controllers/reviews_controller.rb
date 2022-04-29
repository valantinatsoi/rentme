class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:id])
    @review.booking = @booking
    authorize @review

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
