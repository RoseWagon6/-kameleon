class CostumesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new # On crée un objet vide pour simple_form
  end
end
