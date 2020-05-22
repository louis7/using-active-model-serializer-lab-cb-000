require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  before do
    Product.destroy_all
    Customer.destroy_all
    Invoice.destroy_all
    Order.destroy_all
    @product_attributes = {name: "Test", price: "3.99", inventory: 12, description: "This is a great thing"}
  end

  describe "POST create" do

    it 'creates a new product' do
      post :create, product: @product_attributes
    end

  end

  describe "GET show" do
    it 'returns a JSON representation of the product' do
      product = Product.create(@product_attributes)

      get :show, id: product.id, format: 'json'
      body = JSON.parse(response.body)

    end
  end

end
