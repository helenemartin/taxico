class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.integer :taxi_id

      t.timestamps
    end
  end
end
