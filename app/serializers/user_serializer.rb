class UserSerializer < ActiveModel::Serializer
<<<<<<< HEAD

  attributes :id, :first_name, :last_name, :email, :profile_picture

  def profile_picture
    Rails.application.routes.url_helpers.rails_blob_path(object.profile_picture, only_path: true) if object.profile_picture.attached?
  end
=======
  attributes :id, :first_name, :last_name, :email, :mobile_no
  has_many :products
  has_many :purchases
>>>>>>> addfc9e (21 July modification)
end
