class Product < ApplicationRecord
  belongs_to :user
  has_many :purchases
  validates :name ,:category,:alphanumeric_id,:description ,presence: true
  validates :alphanumeric_id,uniqueness:true 
  enum :status,[:available ,:sold]

  has_one_attached :image 
  
end
