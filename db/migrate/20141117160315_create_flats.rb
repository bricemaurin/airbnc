class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :zipcode
      t.string :city
      t.integer :price
      t.integer :room_number
      t.integer :bed_number
      t.integer :guest_number

      t.timestamps
    end
  end
end
