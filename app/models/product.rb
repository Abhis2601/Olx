class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  
  has_one :purchase, dependent: :destroy
  validates :name, :alphanumeric_id, :description, :price,presence: true
  validates :alphanumeric_id, uniqueness:true 
  enum status:{ available:"available", sold:"sold" }

  has_one_attached :image 
end
