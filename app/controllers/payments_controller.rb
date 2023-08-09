# app/controllers/payments_controller.rb
class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create_payment_intent
    product_id = params[:product_id]
    product = Product.find(product_id)
    amount_in_cents = (product.price * 100).to_i  # Convert to cents for Stripe

    payment_intent = Stripe::PaymentIntent.create(
      amount: amount_in_cents,
      currency: 'kes',  # Set to Kenyan Shilling (KES)
      description: "Payment for #{product.name}",
      metadata: {
        user_id: current_user.id,
        product_id: product_id
      }
    )

    render json: { client_secret: payment_intent.client_secret }
  rescue Stripe::StripeError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end

