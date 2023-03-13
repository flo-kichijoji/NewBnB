class ReviewsController < ApplicationController
  before_action :set_flat

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.user = User.find(params[:review][:user_id])

    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:review).permit(:comment, :flat, :user)
  end
end
