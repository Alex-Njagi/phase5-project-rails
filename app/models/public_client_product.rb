class PublicClientProduct < ApplicationRecord
    #This method will be used by the model's join tables to identify a product's name
    def product_name
        self.name
    end

    #This method will be used by the model's join tables to identify a product's name
    def product_unit_price
        self.price
    end
end
