class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.user :references
      t.costume :references
      t.date :start_on
      t.date :end_on
      t.string :status
      t.integer :price
      t.string :message

      t.timestamps
    end
  end
end
