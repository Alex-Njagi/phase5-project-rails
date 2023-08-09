# config/initializers/stripe.rb
Rails.configuration.stripe = {
  publishable_key: 'pk_test_51Nb0CGE2sf0TqZrNWtqYYhBxivjJnEVsA2KlxtQNdBYywFhf27cCskbQJr89HsPjYrFM2s4YcRc8gxiumbKXYymg003bDAdLza',
  secret_key: 'sk_test_51Nb0CGE2sf0TqZrNDhF6x7JvrQvSBH2mLgotTZt4m8VbUjJOtl9iXDvl2fCWVDAeFFyEoJjgb5WvhyrvMeJ7orBW00pXAoD6TT'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
