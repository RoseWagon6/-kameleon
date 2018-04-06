class CostumesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR category ILIKE :query OR name ILIKE :query"
      @costumes = Costume.where(sql_query, query: "%#{params[:query]}%")
    else
      @costumes = Costume.all
    end
  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new # On crée un objet vide pour simple_form
  end
end
