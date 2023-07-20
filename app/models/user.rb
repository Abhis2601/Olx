class User < ApplicationRecord

	has_many :products ,dependent: :destroy
	has_many :purchases ,dependent: :destroy


	validates :first_name, :last_name, :password, :mobile_no, :email, presence: true
	validates :email,:mobile_no, uniqueness: true
	validates :mobile_no, length:{ is:10 }
	validates :password, length:{ minimum:4 }



  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "first_name", "id", "last_name", "mobile_no", "password", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["products", "purchases"]
  end
end
