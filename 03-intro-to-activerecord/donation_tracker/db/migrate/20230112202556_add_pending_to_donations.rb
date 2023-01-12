class AddPendingToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :pending, :boolean, default: false
  end
end
