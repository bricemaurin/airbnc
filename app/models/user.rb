class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo,
    styles: { profile: "200x200#>", flat: "90x90#>", list: "60x60#>", nav: "30x30#>" }

  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\z/

  has_many :flats
end
