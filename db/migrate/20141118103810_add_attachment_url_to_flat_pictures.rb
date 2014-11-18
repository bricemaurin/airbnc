class AddAttachmentUrlToFlatPictures < ActiveRecord::Migration
  def self.up
    change_table :flat_pictures do |t|
      t.attachment :url
    end
  end

  def self.down
    remove_attachment :flat_pictures, :url
  end
end
