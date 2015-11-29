class Supplier < ActiveRecord::Base
  has_many :products

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true, numericality: true
end
