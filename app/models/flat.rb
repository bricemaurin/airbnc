class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :flat_pictures, dependent: :destroy
end
