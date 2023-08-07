#This model is used by Users to upload pieces of land they want to rent out or lease
class FarmingLand < ApplicationRecord
  #Establishes the many to one relationship this model has with the User model
    belongs_to :user

  #Establishes the one to many relationship this model has with the LandOperations model
     #dependent: :destroy makes it so that if a piece of land is deleted, its sales will also be deleted
      has_many :land_operations, dependent: :destroy

  #Ensures the name of the user is looked up before saving
    before_save :get_user

  #Ensures that the status of land can only be "Unoccupied" (which is the default), "Rented", or "Leased"
    validates :status, inclusion: { in: ['Unoccupied', 'Rented', 'Leased'] }

  #This method is used by other models to look up the size of the land
    def land_size
      self.size_in_acres
    end

  #This method is used by other models to look up the description of the land
    def land_description
      self.description
    end

  #This method is used to get the matching user's name using their id
    def get_user
      self.user_name = user.user_name
    end

    private
    
    # def fill_status
    #   self.status = "Unoccupied"
    # end
end
