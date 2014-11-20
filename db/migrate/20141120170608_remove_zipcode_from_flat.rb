class RemoveZipcodeFromFlat < ActiveRecord::Migration
  def change
    remove_column :flats, :zipcode
  end
end
