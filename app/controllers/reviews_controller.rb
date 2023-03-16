class ReviewsController < ApplicationController
  before_action :set_flat

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.user = current_user
    authorize @review

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

  def review_params
    params.require(:review).permit(:comment)
  end
end
