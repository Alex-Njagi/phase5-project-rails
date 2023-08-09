class CreateMpesas < ActiveRecord::Migration[6.1]
  def change
    create_table :mpesas do |t|
      t.string :checkoutRequestID
      t.string :merchantRequestID
      t.string :amount
      t.string :mpesaReceiptNumber
      t.string :phoneNumber

      t.timestamps
    end
  end
end
