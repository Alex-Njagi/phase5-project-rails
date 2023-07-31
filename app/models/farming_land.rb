class FarmingLand < ApplicationRecord
  belongs_to :user
  has_many :land_operations

  before_save :get_user

  validates :status, inclusion: { in: ['Unoccupied', 'Rented', 'Leased'] }

  def land_size
    self.size_in_acres
  end

  def land_description
    self.description
  end

  def get_user
    self.user_name = user.user_name
  end
end
