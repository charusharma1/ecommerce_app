class Product < ActiveRecord::Base
belongs_to :supplier
belongs_to :user
has_many :orders
has_many :images
has_many :categorized_products
has_many :categories, through: :categorized_products

validates :name, presence: true
validates :price, presence: true, numericality: true
validates :supplier_id, presence: true, numericality: true
validates :user_id, presence: true, numericality: true

def self.get_discounted
  Product.where("price < ?", 50)
end

def sale_message
  p "This is the Price: #{price}" 
  if price < 2
    "Discount item!"
  else
    "On Sale!"
  end
end

def tax
  0.09 * price
end

def total
  price + tax
end

end


