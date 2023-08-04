#This model handles the buying of FarmerProducts by users who are Farming Group Administrators
class FarmerProductSale < ApplicationRecord
  #This identifies the model as a join table for the User and FarmerProduct models
    belongs_to :user
    belongs_to :farmer_product

  #Enusres that the various methods below are carried out before a record is saved
  before_save :calculate_total_product_price, :fill_unit_price, :fill_user_name, :fill_product_name

  #This method just looks up the matching user name using the user's id
    def fill_user_name
      self.user_name = user.user_name
    end

  #This method just looks up the matching product name using the product's id
    def fill_product_name
      self.product_name = farmer_product.product_name
    end

  #This method just looks up the product's unit price
    def fill_unit_price
      self.unit_price = farmer_product.product_unit_price
    end

  #This method is used to calculate the total price of a product
    def calculate_total_product_price
      self.total_product_price = quantity * farmer_product.product_unit_price
    end

  #This method calculates the total of all the sales (still in beta because this is the cause of the "issue" mentioned in the seed file data for this model)
    def self.calculate_sale_total
      sum(:total_product_price)
    end
end