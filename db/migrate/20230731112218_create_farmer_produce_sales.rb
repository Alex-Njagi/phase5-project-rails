class CreateFarmerProduceSales < ActiveRecord::Migration[6.1]
  def change
    create_table :farmer_produce_sales do |t|
      t.references :user, null: false, foreign_key: true
      t.string :produce_name
      t.decimal :produce_unit_price
      t.integer :produce_quantity
      t.decimal :total_produce_sale

      t.timestamps
    end
  end
end
