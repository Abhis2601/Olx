class ProductSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers

  attributes :id ,:name,:description,:alphanumeric_id,:price,:image 
  belongs_to :category
  belongs_to :user
  
  def image
    Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
