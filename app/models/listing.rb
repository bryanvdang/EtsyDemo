class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	validates :name, :description, :price, presence: true
	validates :price, numericality: { greater_than: 0 }
	validates_attachment_presence :image
end
