class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :flat_pictures, dependent: :destroy
  accepts_nested_attributes_for :flat_pictures

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
