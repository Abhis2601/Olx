class Product < ApplicationRecord
  belongs_to :user 
  belongs_to :product
  has_one :purchase

  validates :name, :alphanumeric_id, :description, :price,presence: true
  validates :alphanumeric_id, uniqueness:true 
  enum status:{ available:"available", sold:"sold" }


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "name", "price", "product_id", "updated_at", "user_id"]
  end

end
