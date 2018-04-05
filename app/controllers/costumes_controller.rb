class CostumesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end
end
