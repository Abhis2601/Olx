class Product < ApplicationRecord

  validates :name, :alphanumeric_id, :description, :price,presence: true
  validates :alphanumeric_id, uniqueness:true 
  enum status:{ available:"available", sold:"sold" }

  belongs_to :user
  belongs_to :category
  has_one :purchase


  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "name", "price", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "purchase", "user"]
  end

  
end
