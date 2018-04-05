class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show

  end

  def accept_owner_booking
  end

  def refuse_owner_booking
  end

end

