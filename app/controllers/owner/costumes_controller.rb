class Owner::CostumesController < ApplicationController

  def index
    @costumes = current_user.costumes
  end

  # def show
  #   @costume = Costume.find(params[:id])
  #   @costume.user = current_user
  # end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user

    if @costume.save
      redirect_to owner_costumes_path(@costume)
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

