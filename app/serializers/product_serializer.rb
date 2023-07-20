class ProductSerializer < ActiveModel::Serializer

  def image
    Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true) if object.image.attached?
  end

  attributes :id, :name, :description, :price
  has_one :purchase
  belongs_to :user
  belongs_to :category
end
