class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show

  end
end




   # create_table :bookings do |t|
   #    t.references :user, foreign_key: true
   #    t.references :costume, foreign_key: true
   #    t.date :start_on
   #    t.date :end_on
   #    t.string :status, default: :pending
   #    t.integer :price
   #    t.string :message
