class FlatPicture < ActiveRecord::Base
  belongs_to :flat

  has_attached_file :photo,
    styles: { full: "1400x800>", banner: "1400x550#>", list: "400x250#>" }

  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\z/

end
