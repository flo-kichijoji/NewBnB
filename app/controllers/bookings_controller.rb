class BookingsController < ApplicationController
  before_action :set_flat

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = User.find(params[:booking][:user_id])

    if @booking.save
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
    params.require(:booking).permit(:start_date, :end_date, :flat, :user)
  end
end
