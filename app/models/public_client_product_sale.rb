class PublicClientProductSale < ApplicationRecord
  belongs_to :user
  belongs_to :public_client_product

  #Enusres that the various methods below are carried out before a record is saved
  before_save :calculate_total_product_price, :fill_unit_price, :fill_user_name, :fill_product_name

  #This method just looks up the matching user name using the user's id
    def fill_user_name
      self.user_name = user.user_name
    end

  #This method just looks up the matching product name using the product's id
    def fill_product_name
      self.product_name = public_client_product.product_name
    end

  #This method just looks up the product's unit price
    def fill_unit_price
      self.unit_price = public_client_product.product_unit_price
    end

  #This method is used to calculate the total price of a product
    def calculate_total_product_price
      self.total_product_price = quantity * farmer_product.product_unit_price
    end
end
