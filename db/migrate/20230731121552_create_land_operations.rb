class CreateLandOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :land_operations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :user_name
      t.references :farming_land, null: false, foreign_key: true
      t.decimal :land_size
      t.string :land_description
      t.string :type_of_operation
      t.integer :operation_duration
      t.decimal :cost_of_operation
      t.decimal :total_operation_cost

      t.timestamps
    end
  end
end
