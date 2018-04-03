class Owner::CostumesController < ApplicationController
  COSTUMES_PARAMS =
  def new
    costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.save

    redirect_to owner_costume_path(@costume)
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :price, :description, :size, :category, :image, :city, :availability)
  end
end
