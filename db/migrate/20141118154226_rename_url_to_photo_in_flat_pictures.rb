class RenameUrlToPhotoInFlatPictures < ActiveRecord::Migration
  def change
    rename_column :flat_pictures, :url, :photo
    rename_column :flat_pictures, :url_file_name, :photo_file_name
    rename_column :flat_pictures, :url_content_type, :photo_content_type
    rename_column :flat_pictures, :url_file_size, :photo_file_size
    rename_column :flat_pictures, :url_updated_at, :photo_updated_at
  end
end
