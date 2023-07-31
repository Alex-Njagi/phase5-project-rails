class FarmingLand < ApplicationRecord
  belongs_to :user

  before_save :get_user

  validates :status, inclusion: { in: ['Unoccupied', 'Occupied'] }

  def land_size
    self.size_in_acres
  end

  def get_user
    self.user_name = user.user_name
  end
end
