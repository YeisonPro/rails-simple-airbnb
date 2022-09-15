class FlatsController < ApplicationController
  def index
    @flat = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flats_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  def edit
    @flat = Flat.new
  end

  def update
    @flat = Flat.new
    if @flat.update(flats_params)
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
