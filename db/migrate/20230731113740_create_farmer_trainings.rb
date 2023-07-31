class CreateFarmerTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :farmer_trainings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :user_name
      t.date :training_date
      t.decimal :registration_fee
      t.integer :number_of_trainees
      t.string :total_training_cost

      t.timestamps
    end
  end
end
