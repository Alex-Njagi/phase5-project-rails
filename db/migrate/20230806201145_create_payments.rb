class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :amount
      t.string :status
      t.string :stripe_payment_intent_id

      t.timestamps
    end
  end
end
