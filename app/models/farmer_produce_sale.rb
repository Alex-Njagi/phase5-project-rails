#This model handles the selling of produce by Farming Group Administrators to the company
class FarmerProduceSale < ApplicationRecord
  #Establishes the many to one relationship it has with the User model
    belongs_to :user

  #Ensures that the important fields are never missing
    validates :produce_name, :produce_unit_price, :produce_quantity, presence: true

  #Runs the methods below before the record is saved
    before_save :calculate_sale_total, :fill_user_name

  #This method just looks up the matching user name using the user's id
    def fill_user_name
      self.user_name = user.user_name
    end

  #This method is used to calculate the total sale of the farmer's produce
    def calculate_sale_total
      self.total_produce_sale = produce_quantity * produce_unit_price
    end
end
