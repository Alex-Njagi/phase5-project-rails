#This model stores all the various products a Farming Group Administrator user can buy
class FarmerProduct < ApplicationRecord
    #This creates a many to many relationship between this model and the User model
        has_many :farmer_product_sales
        has_many :users, through: :farmer_product_sales

    #This method will be used by the model's join tables to identify a product's name
        def product_name
            self.name
        end
    
    #This method will be used by the model's join tables to identify a product's name
        def product_unit_price
            self.price
        end
end
