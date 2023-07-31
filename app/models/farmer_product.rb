class FarmerProduct < ApplicationRecord
    has_many :farmer_product_sales
    has_many :users, through: :farmer_product_sales

    def product_name
        self.name
    end
    
    def product_unit_price
        self.price
    end
end
