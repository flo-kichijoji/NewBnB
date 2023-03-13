class FlatsController < ApplicationController
  # This action uses query string parameters because it gets run
  # by an HTTP GET request, but this does not make any difference
  # to how the parameters are accessed. The URL for
  # this action would look like this to list activated
  # flats: /flats?status=activated
  def index
    if params[:status] == "activated"
      @flats = Flat.activated
    else
      @flats = Flat.inactivated
    end
  end

  # This action uses POST parameters. They are most likely coming
  # from an HTML form that the user has submitted. The URL for
  # this RESTful request will be "/flats", and the data will be
  # sent as part of the request body.
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
