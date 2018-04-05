class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.received_bookings
  end

  def accept
    @booking = Booking.find(params[:id])

    @booking.status = "accepted"
    @booking.save
    redirect_to owner_bookings_path
     # @costume.availability = false
  end

  def refuse
     @booking = Booking.find(params[:id])

    @booking.status = "refused"
    @booking.save
    redirect_to owner_bookings_path
  end

end

