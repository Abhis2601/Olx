class PurchaseSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :product
end
