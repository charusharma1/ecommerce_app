class Image < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true, numericality: true
  validates :image_url, presence: true, uniqueness: true

end
