class CreateFarmerProductSales < ActiveRecord::Migration[6.1]
  def change
    create_table :farmer_product_sales do |t|
      t.references :user, null: false, foreign_key: true
      t.references :farmer_product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :unit_price
      t.integer :total_product_price
      t.integer :sale_total

      t.timestamps
    end
  end
end
