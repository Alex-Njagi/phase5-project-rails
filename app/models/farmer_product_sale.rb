class FarmerProductSale < ApplicationRecord
  belongs_to :user
  belongs_to :farmer_product

  before_save :calculate_total_product_price, :fill_unit_price, :fill_user_name, :fill_product_name

  def fill_user_name
    self.user_name = user.user_name
  end

  def fill_product_name
    self.product_name = farmer_product.product_name
  end

  def fill_unit_price
    self.unit_price = farmer_product.product_unit_price
  end

  def calculate_total_product_price
    self.total_product_price = quantity * farmer_product.product_unit_price
  end

  def self.calculate_sale_total
    sum(:total_product_price)
  end
end