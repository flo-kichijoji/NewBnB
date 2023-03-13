class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: 'Successfully created an flat.'
    else
      render :new
    end
  end

  private

  # Not sure of this part below <flo>
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :capacity, :availability)
  end
end
