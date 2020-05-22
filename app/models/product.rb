class Product < ActiveRecord::Base
  include ActiveModel::Serialization

  attr_accessor :name, :price, :inventory , :description

  has_many :ordered_products
  has_many :orders, :through => :ordered_products
end
