class CreateProductSerializers < ActiveRecord::Migration
  def change
    create_table :product_serializers do |t|

      t.timestamps null: false
    end
  end
end
