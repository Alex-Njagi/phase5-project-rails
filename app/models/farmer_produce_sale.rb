class FarmerProduceSale < ApplicationRecord
  belongs_to :user

  validates :produce_name, :produce_unit_price, :produce_quantity, presence: true

  before_save :calculate_sale_total, :fill_user_name

  def fill_user_name
    self.user_name = user.user_name
  end

  def calculate_sale_total
    self.total_produce_sale = produce_quantity * produce_unit_price
  end
end
