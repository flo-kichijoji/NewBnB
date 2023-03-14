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

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :capacity, :availability)
  end
end
