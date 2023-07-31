class User < ApplicationRecord
    has_secure_password
    has_many :farmer_product_sales
    has_many :farmer_products, through: :farmer_product_sales

    has_many :farmer_produce_sales

    has_many :farmer_trainings

    validates :name, :status, :email, presence: true
    validates :phone_number, length: { maximum: 10 }
    validates :status, inclusion: { in: ['Farming Group Administrator', 'Public Client'] }

    def user_name
        self.name
    end
end
