class ProductSerializer < ActiveRecord::Serializer
  attributes :id, :name, :description, :inventory, :price
 has_many :orders
end
