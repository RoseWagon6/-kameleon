class Owner::CostumesController < ApplicationController

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user

    if @costume.save
      redirect_to owner_costumes_path
    else
      render :new
    end
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
      :city
    )
  end
end

