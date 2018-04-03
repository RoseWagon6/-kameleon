class Owner::CostumesController < ApplicationController

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.save

    redirect_to costume_path(@costume)
  end

  private

  def costume_params
    params.require(:costume).permit(
      :name,
      :price,
      :description,
      :size,
      :category,
      :image,
      :city,
      :availability
    )
  end
end
