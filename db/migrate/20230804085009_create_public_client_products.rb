class CreatePublicClientProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :public_client_products do |t|
      t.string :name
      t.decimal :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
