class BookingsController < ApplicationController
  before_action :set_flat, only: [:new, :create, :show]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def index
    @bookings = policy_scope(Booking)
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
