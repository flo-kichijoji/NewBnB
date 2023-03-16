class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
    redirect_to flats_path, status: :see_other
  end

  def index
    if params[:query].present?
      @flats = policy_scope(Flat).search_by_name_and_address(params[:query])
    else
      @flats = policy_scope(Flat)
    end

    # if params[:query].present?
    #   sql_query = <<~SQL
    #     flats.name ILIKE :query
    #     OR flats.address ILIKE :query
    #     OR users.email ILIKE :query
    #   SQL
    #   @flats = Flat.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @movies = Movie.all
    # end

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,

        info_window_html: render_to_string(partial: "info_window", locals: { flat: flat }),
        marker_html: render_to_string(partial: "marker", locals: { flat: flat })
      }
    end
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat
    if @flat.save
      redirect_to @flat, notice: 'Successfully created an flat.'
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :capacity)
  end
end
