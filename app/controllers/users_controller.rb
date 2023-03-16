class UsersController < ApplicationController
  def show
    @flats = Flat.all
    authorize @flats
  end
end
