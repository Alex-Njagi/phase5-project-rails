#This model stores anything and everything about the users
class User < ApplicationRecord
    #This handles practically everything about the password
        has_secure_password

    #This creates the many to many relationship between this model and FarmerProductSale
        has_many :farmer_product_sales
        has_many :farmer_products, through: :farmer_product_sales

    #This creates the one to many relationship between this model and FarmerProduceSale
        has_many :farmer_produce_sales

    #This creates the one to many relationship between this model and FarmerTraining
        has_many :farmer_trainings

    #This creates the one to many relationship between this model and FarmingLands
        #dependent: :destroy makes it so that if a user is deleted, their pieces of land will also be deleted
            has_many :farming_lands, dependent: :destroy

    #This creates the one to many relationship between this model and LandOperations
        has_many :land_operations

    #Ensures the name, status and email are never missing
        validates :name, :status, :email, presence: true
    #Ensures the maximum group and phone number length is 10
        validates :phone_number, :group_number, length: { maximum: 10 }
    #Ensures the minimum password length is 10
        validates :password, length: { minimum: 6 }
    #Ensures that a user can only sign up as a Farming Group Administrator or Public Client
        validates :status, inclusion: { in: ['Farming Group Administrator', 'Public Client'] }

    #This method is going to be used by other methods to read the user's name in join tables using their id
        def user_name
            self.name
        end
end
