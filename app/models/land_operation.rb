class LandOperation < ApplicationRecord
  belongs_to :user
  belongs_to :farming_land

  before_save :fill_user_name, :fill_land_size, :fill_land_description, :calculate_total_operation_cost, :update_farming_land_status

  enum type_of_operation: { rent: 0, lease: 1, unoccupy: 2 }

  def fill_user_name
    self.user_name = user.user_name
  end

  def fill_land_size
    self.land_size = farming_land.land_size
  end

  def fill_land_description
    self.land_description = farming_land.land_description
  end

  def calculate_total_operation_cost
    self.total_operation_cost = operation_duration * cost_of_operation
  end

  private

  def update_farming_land_status
    farming_land_status = case type_of_operation
                          when "rent"
                            "Rented"
                          when "lease"
                            "Leased"
                          when "unoccupy"
                            "Unoccupied"
                          end

    farming_land.update(status: farming_land_status)
  end
end