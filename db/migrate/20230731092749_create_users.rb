class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :status
      t.integer :group_number, :default => 0
      t.string :location
      t.string :phone_number
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
