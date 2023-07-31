class CreateFarmingLands < ActiveRecord::Migration[6.1]
  def change
    create_table :farming_lands do |t|
      t.references :user, null: false, foreign_key: true
      t.string :user_name
      t.string :image
      t.string :description
      t.decimal :size_in_acres
      t.string :status, :default => "Unoccupied"

      t.timestamps
    end
  end
end
