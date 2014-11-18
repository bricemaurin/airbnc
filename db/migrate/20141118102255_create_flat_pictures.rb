class CreateFlatPictures < ActiveRecord::Migration
  def change
    create_table :flat_pictures do |t|
      t.string :url
      t.references :flat, index: true

      t.timestamps
    end
  end
end
