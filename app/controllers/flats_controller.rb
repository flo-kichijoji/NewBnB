class FlatsController < ApplicationController
  def new
    @flat = Flat.new
    authorize @flat
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def edit
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def update
    @flat = Flat.find(params[:id])
    authorize @flat
    if Flat.update(flat_params)
      redirect_to @flat
    else
      render 'edit'
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    authorize @flat
    @flat.destroy
    redirect_to flats_path
  end

  def index
    @flats = Flat.all
    @flats = policy_scope(Flat)
  end

  def create
    @flat = Flat.new(flat_params)
    @restaurant.user = current_user
    authorize @flat
    if @flat.save
      redirect_to @flat, notice: 'Successfully created an flat.'
    else
      render :new
    end
  end

  private

  # Not sure of this part below [flo]
  def flat_params
    params.require(:flat).permit(:name)
  end
end
