class AddOwnedByFieldToFarmingLand < ActiveRecord::Migration[6.1]
  def change
    add_column :farming_lands, :owned_by, :string, :default => "Nobody"
  end
end
