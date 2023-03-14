class FlatsController < ApplicationController
  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if Flat.update(flat_params)
      redirect_to @flat
    else
      render 'edit'
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  # [flo]
  def create
    @flat = Flat.new(flat_params)
    # The user of the flat to create is the current user
    @restaurant.user = current_user
    if @flat.save
      redirect_to @flat, notice: 'Successfully created an flat.'
    else
      render :new
    end
    # [flo]
  end

  private

  # Not sure of this part below [flo]
  def flat_params
    params.require(:flat).permit(:name)
  end
end
