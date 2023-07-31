class AddLookUpFieldsToModels < ActiveRecord::Migration[6.1]
  def change
    add_column :farmer_product_sales, :user_name, :string
    add_column :farmer_product_sales, :product_name, :string
    add_column :farmer_produce_sales, :user_name, :string
  end
end
