require 'rails_helper'

RSpec.describe "Products", type: :feature do
  before do
    Product.destroy_all
    Customer.destroy_all
    Invoice.destroy_all
    Order.destroy_all
  end

  describe "products show" do
    it 'requires javascript to go next' do
      p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
      p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")

      visit product_path(p1)
      click_link "Next Product"
    end

    it 'loads next product without page refresh', js: true do
      p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
      p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")

      visit product_path(p1)
      click_link "Next Product"
    end
  end

  describe "products index" do
    
    end
  end
end
