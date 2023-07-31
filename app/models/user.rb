class User < ApplicationRecord
    has_secure_password
    has_many :farmer_product_sales
    has_many :farmer_products, through: :farmer_product_sales

    has_many :farmer_produce_sales

    has_many :farmer_trainings

    has_many :farming_lands, dependent: :destroy

    has_many :land_operations

    validates :name, :status, :email, presence: true
    validates :phone_number, :group_number, length: { maximum: 10 }
    validates :password, length: { minimum: 6 }
    validates :status, inclusion: { in: ['Farming Group Administrator', 'Public Client'] }

    def user_name
        self.name
    end
end
