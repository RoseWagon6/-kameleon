class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @costume = Costume.find(params[:costume_id])

    @booking.costume = @costume
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render "costumes/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on, :message)
  end
end



