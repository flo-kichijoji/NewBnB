class UsersController < ApplicationController
  def show
    @flats = Flat.all
    @bookings = Booking.all
    authorize @flats
    authorize @bookings
  end
end
