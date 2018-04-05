class RenamePriceToTotalPriceOnBookings < ActiveRecord::Migration[5.1]
  def change
    rename_column :bookings, :price, :total_price
  end
end
