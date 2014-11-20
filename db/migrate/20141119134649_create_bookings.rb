class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :price
      t.boolean :status
      t.references :user, index: true
      t.references :flat, index: true
      t.integer :number_of_day

      t.timestamps
    end
  end
end
