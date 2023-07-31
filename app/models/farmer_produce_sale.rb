class FarmerProduceSale < ApplicationRecord
  belongs_to :user

  validates :produce_name, :produce_unit_price, :produce_quantity, presence: true

  before_save :calculate_sale_total

  def calculate_sale_total
    self.total_produce_sale = produce_quantity * produce_unit_price
  end
end
