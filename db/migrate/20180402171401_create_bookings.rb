class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :costume, foreign_key: true
      t.date :start_on
      t.date :end_on
      t.string :status, default: :pending
      t.integer :price
      t.string :message

      t.timestamps
    end
  end
end
