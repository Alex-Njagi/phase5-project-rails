# app/models/payment.rb
class Payment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :order
  has_many :payment_items, dependent: :destroy
  has_one :payment_status, dependent: :destroy

  # Add any other associations needed based on your application's design

  # Validations
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true, inclusion: { in: ['succeeded', 'failed', 'pending'] }
  validates :stripe_payment_intent_id, presence: true, uniqueness: true

  # ... (rest of the model code)
end
