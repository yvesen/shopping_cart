class Shopping < ApplicationRecord
	validates_presence_of :name
	mount_uploader :image, PhotoUploader
	has_many :cart_items, dependent: :destroy
  has_many :cart, through: :cart_items
end
