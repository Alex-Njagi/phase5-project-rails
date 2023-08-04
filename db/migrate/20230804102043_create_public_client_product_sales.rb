class CreatePublicClientProductSales < ActiveRecord::Migration[6.1]
  def change
    create_table :public_client_product_sales do |t|
      t.references :user, null: false, foreign_key: true
      t.references :public_client_product, null: false, foreign_key: true
      t.string :user_name
      t.string :product_name
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :total_product_price

      t.timestamps
    end
  end
end
