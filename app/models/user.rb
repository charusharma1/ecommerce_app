class User < ActiveRecord::Base
  has_many :orders 
  has_many :products

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
