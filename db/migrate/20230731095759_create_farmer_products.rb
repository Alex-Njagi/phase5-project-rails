class CreateFarmerProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :farmer_products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
