#This model is used to handle the renting or leasing of land by users
class LandOperation < ApplicationRecord
  #Establishes its relationships to its parent models
    belongs_to :user
    belongs_to :farming_land

  #Ensures that the below methods are run before a record can be saved
    before_save :fill_user_name, :fill_land_size, :fill_land_description, :calculate_total_operation_cost, :update_farming_land_status

  #This is what will be used to show that the operation is either leasing, renting or not
    enum type_of_operation: { rent: 0, lease: 1, unoccupy: 2 }

  #This is used to look up the matching user name from the User model
    def fill_user_name
      self.user_name = user.user_name
    end

  #This is used to look up the matching land's land size from the FarmingLand model
    def fill_land_size
      self.land_size = farming_land.land_size
    end

  #This is used to look up the matching land's description from the FarmingLand model
    def fill_land_description
      self.land_description = farming_land.land_description
    end

  #This is used to calculate the total cost of either renting or leasing the land
    def calculate_total_operation_cost
      self.total_operation_cost = operation_duration * cost_of_operation
    end

  private

  #This method is used by the FarmingLand model to update the land's status based on what operation is being carried out in this model
    def update_farming_land_status
      farming_land_status = case type_of_operation
                            when "rent"
                              "Rented"
                            when "lease"
                              "Leased"
                            when "unoccupy"
                              "Unoccupied"
                            end

      farming_land.update(status: farming_land_status, owned_by: user_name)
    end
end