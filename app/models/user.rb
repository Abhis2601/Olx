class User < ApplicationRecord
<<<<<<< HEAD
	has_many :products ,dependent: :destroy
	has_many :purchases ,dependent: :destroy
=======
	has_many :products
	has_many :purchases
>>>>>>> e3e9c9f (20 July active admin)

	validates :first_name, :last_name, :password, :mobile_no, :email, presence: true
	validates :email,:mobile_no, uniqueness: true
	validates :mobile_no, length:{ is:10 }
	validates :password, length:{ minimum:4 }

<<<<<<< HEAD
  has_one_attached :profile_picture
=======
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "first_name", "id", "last_name", "mobile_no", "password", "updated_at"]
  end


  def self.ransackable_associations(auth_object = nil)
    ["products", "purchases"]
  end
>>>>>>> e3e9c9f (20 July active admin)
end
