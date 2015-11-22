class Product < ActiveRecord::Base
belongs_to :supplier
has_many :images

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


