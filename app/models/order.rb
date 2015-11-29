class Order < ActiveRecord::Base
 belongs_to :user
 belongs_to :product

 validates :quantity, presence: true, numericality: true
 validates :user_id, presence: true, numericality: true
 validates :subtotal, presence: true, numericality: true
 validates :tax, presence: true, numericality: true
 validates :total, presence: true, numericality: true
 validates :product_id, presence: true, numericality: true

end
