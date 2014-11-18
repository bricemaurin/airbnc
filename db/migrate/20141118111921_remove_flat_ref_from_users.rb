class RemoveFlatRefFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :flat, index: true
  end
end
